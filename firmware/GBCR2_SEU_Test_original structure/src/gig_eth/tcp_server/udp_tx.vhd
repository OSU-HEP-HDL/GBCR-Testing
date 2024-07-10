-------------------------------------------------------------
-- MSS copyright 2011-2013
--	Filename:  UDP_TX.VHD
-- Author: Alain Zarembowitch / MSS
--	Version: 5
--	Date last modified: 1/31/14
-- Inheritance: 	n/a
--
-- description:  
-- The flexible UDP_TX.vhd component encapsulates a data packet into a UDP frame 
-- addressed from any port to any port/IP destination.
--
-- As we can't be sure that the destination is reachable or even in the routing table, 
-- input packet acceptance is signified by an ACK or NAK.
-- Three cases:
-- (a) destination IP address is a WAN address: the UDP frame is sent immediately to the gateway
-- (b) destination IP address is a LAN address stored in the routing table. The UDP frame is sent between 0.1 and 
-- 1.33us after receiving the last byte. 
-- (c) destination IP address is not in the routing table. The routing table will send an ARP request (takes time).
-- This component sends a NAK back to the application. It is up to the application to discard or retry later.
-- 
-- The application (layer above) is responsible for UDP frame segmentation. 
-- The maximum size is determined by the number of block RAMs instantiated within. 
-- 
-- This component holds AT MOST TWO PACKETS at any given time in an elastic buffer. One packet being transferred in,
-- another packet being transferred out.
--
-- The application must check the flow control flag APP_CTS before and while sending data to this component.
-- The application should not send another UDP frame until receiving either an ACK or NAK regarding the previous
-- UDP frame. For speed reason, the app can transfer in the next UDP frame while the previous one is being 
-- transferred out to the MAC layer. The component behaves as an A/B buffer. 
--
-- The maximum overall throughput is reached when all packets have about the same size.
--
-- The code is structured for future IPv6 upgrade but not fully written for it.
--
-- Rev2 8/15/12 AZ
-- Corrected bug in checksum computation when the input frame was received with breaks. (spurious odd byte padding)
--
-- Rev 3 7/28/13 AZ
-- minor change. A recommended initial value for TTL is 64
--
-- Rev 4 11/9/13 AZ
-- Corrected error in IP header computation (caused by incomplete change in rev3 above)
--
-- Rev 5 1/31/14 AZ
-- Updated sensitivity lists.
---------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
Library UNISIM;
use UNISIM.vcomponents.all;

entity UDP_TX is
	generic (
		NBUFS: integer := 1;
			-- number of 16Kb dual-port RAM buffers instantiated within for each stream.
			-- Trade-off buffer depth and overall UDP throughput.
			-- Valid values: 1,2,4,8
		IPv6_ENABLED: std_logic := '0'
			-- 0 to minimize size, 1 to allow IPv6 in addition to IPv4 (larger size)
	);
    Port ( 
		--// CLK, RESET
		SYNC_RESET: in std_logic;
		CLK: in std_logic;		-- synchronous clock
			-- Must be a global clocks. No BUFG instantiation within this component.
		TICK_4US: in std_logic;

		--// APPLICATION INTERFACE -> TX BUFFER
		APP_DATA: in std_logic_vector(7 downto 0);
		APP_DATA_VALID: in std_logic;
		APP_SOF: in std_logic;	-- also resets internal state machine
		APP_EOF: in std_logic;
			-- IMPORTANT: always send an EOF to close the transaction.
		APP_CTS: out std_logic;	
			-- Clear To Send = transmit flow control. 
			-- App is responsible for checking the CTS signal before sending APP_DATA
			-- APP_SOF and APP_EOF are one CLK wide pulses indicating the first and last byte in the UDP frame.
			-- Special case: Zero-length UDP frame: APP_SOF = '1', APP_EOF = '1' and APP_DATA_VALID = '0'
			-- Special case: 1 byte UDP frame: APP_SOF = '1', APP_EOF = '1', APP_DATA_VALID = '1'
		ACK: out std_logic;
			-- previous UDP frame is accepted for transmission. Always after APP_SOF, but could happen before or
		NAK: out std_logic;
			-- no routing information available for the selected LAN destination IP. Try later.  
			-- ACK/NAK is sent anytime after APP_SOF, even before the input packet is fully transferred in  
	
		--// CONTROLS
		DEST_IP_ADDR: in std_logic_vector(127 downto 0);	
		DEST_PORT_NO: in std_logic_vector(15 downto 0);
		SOURCE_PORT_NO: in std_logic_vector(15 downto 0);
		IPv4_6n: in std_logic;
			-- routing information. Read at start of UDP frame (APP_SOF = '1')
			-- It can at any other time. 
			-- Note: changing destination IP address may involve a timing penalty as this component
			-- has to ask the routing table for routing information and possibly send an ARP request to
			-- the target IP and wait for the ARP response.

		--// CONFIGURATION
		MAC_ADDR: in std_logic_vector(47 downto 0);
		IPv4_ADDR: in std_logic_vector(31 downto 0);
		IPv6_ADDR: in std_logic_vector(127 downto 0);
			-- fixed (i.e. not changing from UDP frame to frame)
		IP_ID: in std_logic_vector(15 downto 0);
			-- 16-bit IP ID, unique for each datagram. Incremented every time
			-- an IP datagram is sent (not just for this socket).

		--// ROUTING INFO (interface with ARP_CACHE2)
		-- (a) Query
		RT_IP_ADDR: out std_logic_vector(31 downto 0);
			-- user query: destination IP address to resolve (could be local or remote). read when RT_REQ_RTS = '1'
		RT_REQ_RTS: out std_logic;
			-- routing query ready to start
		RT_REQ_CTS: in std_logic;
			-- the top-level arbitration circuit passed the request to the routing table
		-- (b) Reply
		RT_MAC_REPLY: in std_logic_vector(47 downto 0);
			-- Destination MAC address associated with the destination IP address RT_IP_ADDR. 
			-- Could be the Gateway MAC address if the destination IP address is outside the local area network.
		RT_MAC_RDY: in std_logic;
			-- 1 CLK pulse to read the MAC reply
			-- If the routing table is idle, the worst case latency from the RT_REQ_RTS request is 1.33us
			-- If there is no match in the table, no response will be provided. Calling routine should
			-- therefore have a timeout timer to detect lack of response.
		RT_NAK: in std_logic;
			-- 1 CLK pulse indicating that no record matching the RT_IP_ADDR was found in the table.


		--// OUTPUT: TX UDP layer -> Transmit MAC Interface
		-- 32-bit CRC is automatically appended by MAC. Not supplied here.
		MAC_TX_DATA: out std_logic_vector(7 downto 0) := x"00";
			-- MAC reads the data at the rising edge of CLK when MAC_TX_DATA_VALID = '1'
		MAC_TX_DATA_VALID: out std_logic := '0';
			-- data valid
		MAC_TX_EOF: out std_logic := '0';
			-- '1' when sending the last byte in a packet to be transmitted. 
			-- Aligned with MAC_TX_DATA_VALID
		MAC_TX_CTS: in std_logic;
			-- MAC-generated Clear To Send flow control signal. The user should check that this 
			-- signal is high before sending the next MAC_TX_DATA byte. 
		RTS: out std_logic := '0';
			-- '1' when a frame is ready to be sent (tell the COM5402 arbiter)
			-- When the MAC starts reading the output buffer, it is expected that it will be
			-- read until empty.

		--// TEST POINTS 
		TP: out std_logic_vector(10 downto 1)

			);
end entity;

architecture Behavioral of UDP_TX is
--------------------------------------------------------
--      COMPONENTS
--------------------------------------------------------
--------------------------------------------------------
--     SIGNALS
--------------------------------------------------------
--//-- INPUT STATE MACHINE -------------------------------------
signal STATE_A: integer range 0 to 5 := 0;
signal LAST_IP: std_logic_vector(31 downto 0) := (others => '0');
signal LAST_MAC: std_logic_vector(47 downto 0) := (others => '0');
signal APP_EOF_FLAG: std_logic := '0';
signal TIMER_A: integer range 0 to 10 := 0;	-- integer multiple of 4us 
signal RT_REQ_RTS_local: std_logic := '0';
signal TX_PACKET_SEQUENCE_START: std_logic := '0';
signal RTS_local: std_logic := '0';

--//-- UDP TX CHECKSUM  ---------------------------
signal APP_DATA_B: std_logic_vector(7 downto 0) := (others => '0');
signal APP_DATA_B_D: std_logic_vector(7 downto 0) := (others => '0');
signal UDP_PAYLOAD_CKSUM: std_logic_vector(16 downto 0) := (others => '0');
signal ODD_EVENn: std_logic := '0';
signal PAYLOAD_SIZE: std_logic_vector(15 downto 0) := (others => '0');	-- 128Kbits max (8 RAMB)
signal PAYLOAD_SIZE_D: std_logic_vector(15 downto 0) := (others => '0');	-- 128Kbits max (8 RAMB)

--//-- ELASTIC BUFFER -----------------
signal PTR_MASK: std_logic_vector(13 downto 0) := (others => '1');
signal WPTR: std_logic_vector(13 downto 0) := (others => '0');
signal WPTR0: std_logic_vector(13 downto 0) := (others => '0');
signal WPTR_MEMINDEX: std_logic_vector(2 downto 0) := (others => '0');
signal WEA: std_logic_vector((NBUFS -1) downto 0) := (others => '0');
signal RPTR_MEMINDEX_E: std_logic_vector(2 downto 0) := (others => '0');
signal RPTR_MEMINDEX: std_logic_vector(2 downto 0) := (others => '0');
signal RPTR: std_logic_vector(13 downto 0) := (others => '1');
type DOBtype is array(integer range 0 to (NBUFS-1)) of std_logic_vector(7 downto 0);
signal DOB: DOBtype;
signal TX_PAYLOAD_DATA:  std_logic_vector(7 downto 0) := (others => '0');

--//-- FREEZE INPUTS -----------------------
signal TX_DEST_MAC_ADDR: std_logic_vector(47 downto 0) := (others => '0');
signal IPv4_6n_D: std_logic := '0';
signal TX_IPv4_6n: std_logic := '0';
signal DEST_IP_ADDR_D: std_logic_vector(127 downto 0):= (others => '0');
signal TX_DEST_IP_ADDR: std_logic_vector(127 downto 0):= (others => '0');
signal TX_DEST_PORT_NO: std_logic_vector(15 downto 0) := (others => '0');
signal TX_SOURCE_MAC_ADDR: std_logic_vector(47 downto 0) := (others => '0');
signal TX_SOURCE_IP_ADDR: std_logic_vector(127 downto 0) := (others => '0');
signal TX_SOURCE_PORT_NO: std_logic_vector(15 downto 0) := (others => '0');

--//-- TX PACKET SIZE ---------------------------
signal TX_IP_LENGTH: std_logic_vector(15 downto 0) := (others => '0');
signal TX_UDP_LENGTH: std_logic_vector(15 downto 0) := (others => '0');

--//-- TX PACKET ASSEMBLY   ----------------------
signal TX_ACTIVE: std_logic := '0';
signal TX_ETHERNET_HEADER: std_logic := '0';
signal TX_IP_HEADER: std_logic := '0';
signal TX_UDP_HEADER: std_logic := '0';
signal TX_UDP_PAYLOAD: std_logic := '0';
signal TX_UDP_PAYLOAD_D: std_logic := '0';
signal TX_BYTE_COUNTER: std_logic_vector(15 downto 0) := (others => '0'); 
signal TX_BYTE_COUNTER_D: std_logic_vector(15 downto 0) := (others => '0'); 
signal TX_BYTE_COUNTER_INC: std_logic_vector(15 downto 0) := (others => '0'); 
signal MAC_TX_CTS_D: std_logic := '0';
signal MAC_TX_DATA_E:  std_logic_vector(7 downto 0) := x"00";
signal MAC_TX_DATA_local:  std_logic_vector(7 downto 0) := x"00";
signal MAC_TX_EOF_E: std_logic := '0';
signal MAC_TX_EOF_local: std_logic := '0';
signal MAC_TX_DATA_VALID_E: std_logic := '0';

signal UDP_LAST_HEADER_BYTE: std_logic := '0';

--// TX IP HEADER CHECKSUM ---------------------------------------------
signal TX_IP_HEADER_D: std_logic := '0';
signal TX_IP_HEADER_CKSUM_DATA : std_logic_vector(15 downto 0);
signal TX_IP_HEADER_CKSUM_FLAG: std_logic;
signal TX_IP_HEADER_CHECKSUM: std_logic_vector(16 downto 0) := "0" & x"0000";
signal TX_IP_HEADER_CHECKSUM_FINAL: std_logic_vector(15 downto 0) := x"0000";

--// TX UDP CHECKSUM ---------------------------------------------
signal TX_UDP_CKSUM_FLAG: std_logic := '0';
signal TX_UDP_CKSUM_DATA: std_logic_vector(15 downto 0) := (others => '0');
signal TX_UDP_CHECKSUM: std_logic_vector(16 downto 0) := (others => '0');
signal TX_UDP_CHECKSUM_FINAL: std_logic_vector(16 downto 0) := (others => '0');

--------------------------------------------------------
--      IMPLEMENTATION
--------------------------------------------------------
begin

--//-- INPUT STATE MACHINE -------------------------------------
-- A-side of the dual-port block RAM
STATE_A_GEN_001: process(CLK)
begin
	if rising_edge(CLK) then
		if(SYNC_RESET = '1') then
			STATE_A <= 0;
			TIMER_A <= 0;
			NAK <= '0';
		elsif (APP_SOF = '1') then
			-- App starts transferring a new UDP frame. Resets the state machine.
			-- Do we already know the destination MAC address here (in this component?)
			if(DEST_IP_ADDR = LAST_IP) then
				-- same destination as the previous frame. No need to ask the ARP cache (use LAST_MAC).
				STATE_A <= 2;	-- awaiting complete input UDP frame
			else 
				-- request the destination MAC address from the routing table (ARP_CACHE2) 				
				-- Set timer to avoid being stuck waiting for a missing event.
				TIMER_A <= 10;
				STATE_A <= 1;	-- awaiting routing info
			end if;
		elsif (STATE_A = 0) then
			NAK <= '0';
		elsif (STATE_A = 1) and (RT_MAC_RDY = '1') then
			-- received destination MAC address for the specified destination IP address
			if (APP_EOF_FLAG = '1') then
				-- input UDP frame is complete. 
				STATE_A <= 3;  -- await complete MAC transmission of previous frame.
			else
				STATE_A <= 2;	-- awaiting complete input UDP frame
			end if;
		elsif (STATE_A = 1) and (RT_NAK = '1') then
			-- no entry in the routing table. Tell application (please try again later)
			STATE_A <= 0;
			NAK <= '1';
		elsif (STATE_A = 1) and (TIMER_A = 0) then
			-- timeout waiting for a response from routing table (traffic congestion?) 
			-- tell application (please try again later)
			STATE_A <= 0;
			NAK <= '1';
		elsif (STATE_A = 2) and (APP_EOF_FLAG = '1') then
			-- input UDP frame is complete. 
			STATE_A <= 3;  -- await complete MAC transmission of previous frame.
		elsif (STATE_A = 3) and ((RTS_local = '0') or (MAC_TX_EOF_local = '1')) then
			-- input UDP frame is complete & previous frame transmission is complete.
			-- Ask MAC to send this new frame (raise RTS) and await MAC_TX_CTS.
			STATE_A <= 4;
		elsif (STATE_A = 4) and (MAC_TX_CTS = '1') then
			-- starting transmission to MAC layer (TX_PACKET_SEQUENCE_START). Ready for another input UDP frame.
			STATE_A <= 0;
		elsif(TICK_4US = '1') and (TIMER_A /= 0) then
			TIMER_A <= TIMER_A - 1;
		end if;
	end if;
end process;
		
-- flow control: stop input flow immediately upon receiving the last packet byte. Resume when 
APP_CTS <= '0' when (APP_EOF = '1') else
			  '0' when (APP_EOF_FLAG = '1') else
			  '0' when (STATE_A = 3) else
			  '1';

ACK <= TX_PACKET_SEQUENCE_START;	-- send ACK to the App (same as start of UDP packet assembly).

-- Ask for MAC transmit resources as soon as a complete UDP frame is stored in the elastic buffer
-- and the previous frame was completely transferred to the MAC 
-- and routing information is available.
RTS_GEN_001: process(CLK)
begin
	if rising_edge(CLK) then
		if(SYNC_RESET = '1') then
			RTS_local <= '0';
		elsif (STATE_A = 3) and ((RTS_local = '0') or (MAC_TX_EOF_local = '1')) then
			-- complete UDP frame waiting for tx in elastic buffer
			RTS_local <= '1';
		elsif(MAC_TX_EOF_local = '1') then
			-- no complete UDP frame waiting for tx
			RTS_local <= '0';
		end if;
	end if;
end process;
RTS <= RTS_local;

--//-- ROUTING -------------------------------------
-- send routing request
RT_001: process(CLK)
begin
	if rising_edge(CLK) then
		if(SYNC_RESET = '1') then
			RT_REQ_RTS_local <= '0';
			RT_IP_ADDR <= (others => '0');
		elsif (STATE_A = 0) and (APP_SOF = '1') and (DEST_IP_ADDR /= LAST_IP) then
			-- new UDP tx packet, different destination. 
			-- request the destination MAC address from the routing table (ARP_CACHE2) 				
			RT_IP_ADDR <= DEST_IP_ADDR(31 downto 0);	-- IPv4 only
			RT_REQ_RTS_local <= '1';
		elsif (RT_REQ_CTS = '1') then
			-- routing request in progress.
			RT_REQ_RTS_local <= '0';
		end if;
	end if;
end process;
RT_REQ_RTS <= RT_REQ_RTS_local;

-- Remember the last set of destination IP/MAC addresses to minimize traffic at the cache memory
RT_002: process(CLK)
begin
	if rising_edge(CLK) then
		if(SYNC_RESET = '1') then
			LAST_IP <= (others => '0');
			LAST_MAC <= (others => '0');
		elsif (STATE_A = 1) and (RT_MAC_RDY = '1') then
			-- received destination MAC address for the specified destination IP address
			LAST_IP <= DEST_IP_ADDR(31 downto 0);	
			LAST_MAC <= RT_MAC_REPLY;
		end if;
	end if;
end process;


-- Is the UDP frame completely in?
-- This process works even in the special case of zero-length UDP frame
APP_EOF_FLAG_GEN: process(CLK) 
begin
	if rising_edge(CLK) then
		if(SYNC_RESET = '1') then
			APP_EOF_FLAG <= '0';
		-- the events order is important here.
		elsif(APP_EOF = '1') then
			APP_EOF_FLAG <= '1';
		elsif(STATE_A = 0) then
			-- idle
			APP_EOF_FLAG <= '0';
		end if;
	end if;
end process;


--//-- UDP TX CHECKSUM  ---------------------------
-- Compute the UDP payload checksum (excluding headers).
-- This PARTIAL checksum is ready 1(even number of bytes in payload) or 2 (odd number) into STATE_A = 3.
-- So the checksum will always be ready when needed.

APP_DATA_B <= APP_DATA when (APP_DATA_VALID = '1') or (APP_EOF_FLAG = '0') else x"00" ;	-- pad last odd byte with a zero byte

UDP_PAYLOAD_CKSUM_GEN_001: process(CLK)
begin
	if rising_edge(CLK) then
		if(SYNC_RESET = '1') then
			UDP_PAYLOAD_CKSUM <= (others => '0');
			ODD_EVENn <= '0';
			PAYLOAD_SIZE <= (others => '0');
		elsif (STATE_A = 0) and (APP_DATA_VALID = '0') then
			-- idle state. clear checksum
			UDP_PAYLOAD_CKSUM <= (others => '0');
			ODD_EVENn <= '0';
			PAYLOAD_SIZE <= (others => '0');
		elsif(APP_DATA_VALID = '1') then
			ODD_EVENn <= not ODD_EVENn;	-- toggle odd/even
			PAYLOAD_SIZE <= PAYLOAD_SIZE + 1;	-- keep track of the UDP payload size
			if(ODD_EVENn = '0') then
				APP_DATA_B_D <= APP_DATA_B;
			else
				UDP_PAYLOAD_CKSUM <= ("0" & UDP_PAYLOAD_CKSUM(15 downto 0)) + 
										 (x"0000" & UDP_PAYLOAD_CKSUM(16)) +
										 ("0" & APP_DATA_B_D & APP_DATA_B); 
			end if;
		elsif(ODD_EVENn = '1') and (APP_EOF_FLAG = '1') then
			-- odd number of bytes in the UDP payload. Pad on the right with zeros and sum one last time.
			ODD_EVENn <= not ODD_EVENn;	-- toggle odd/even
			UDP_PAYLOAD_CKSUM <= ("0" & UDP_PAYLOAD_CKSUM(15 downto 0)) + 
									 (x"0000" & UDP_PAYLOAD_CKSUM(16)) +
									 ("0" & APP_DATA_B_D & APP_DATA_B); 
		end if;
	end if;
end process;


--//-- ELASTIC BUFFER ----------------------------
WPTR_GEN_001: process(CLK)
begin
	if rising_edge(CLK) then
		if(SYNC_RESET = '1') then
			WPTR <= (others => '0');
			WPTR0 <= (others => '0');
		elsif(APP_DATA_VALID = '1') then
			WPTR <= (WPTR + 1) and PTR_MASK;
			if(APP_SOF = '1') then
				-- remember memory location for 1st byte
				WPTR0 <= WPTR;
			end if;
		end if;
	end if;
end process;

-- Select which block RAM to write to. Depends on the memory depth (1,2,4, or 8 RAMblocks)
WPTR_MEMINDEX <= WPTR(13 downto 11) when (NBUFS = 8) else
				"0" & WPTR(12 downto 11) when (NBUFS = 4) else
				"00" & WPTR(11 downto 11) when (NBUFS = 2) else
				"000"; -- when  (NBUFS = 1) 

-- Mask the upper address bits depending on the number of block RAMs instantiated (NBUFS)
PTR_MASK <= "11111111111111" when (NBUFS = 8) else
				"01111111111111" when (NBUFS = 4) else
				"00111111111111" when (NBUFS = 2) else
				"00011111111111"; -- when  (NBUFS = 1) 

-- select which RAMBlock to write to.
WEA_GEN_001: process(WPTR_MEMINDEX, APP_DATA_VALID)
begin
	for J in 0 to (NBUFS -1) loop
		if(WPTR_MEMINDEX = J) then	-- range 0 through 7
			WEA(J) <= APP_DATA_VALID;
		else
			WEA(J) <= '0';
		end if;
	end loop;
end process;

-- 1,2,4, or 8 RAM blocks.
RAMB_16_S9_S9_Y: for J in 0 to (NBUFS-1) generate
	RAMB16_S9_S9_001 : RAMB16_S9_S9
	port map (
		DOA => open,      	-- Port A 8-bit Data Output
		DOB => DOB(J),      	-- Port B 8-bit Data Output
		DOPA => open,    		-- Port A 1-bit Parity Output
		DOPB => open,    		-- Port B 1-bit Parity Output
		ADDRA => WPTR(10 downto 0),  -- Port A 11-bit Address Input
		ADDRB => RPTR(10 downto 0),  -- Port B 11-bit Address Input
		CLKA => CLK,    		-- Port A Clock
		CLKB => CLK,    		-- Port B Clock
		DIA => APP_DATA,     -- Port A 8-bit Data Input
		DIB => x"00",      	-- Port B 8-bit Data Input
		DIPA => "0",    		-- Port A 1-bit parity Input
		DIPB => "0",    		-- Port-B 1-bit parity Input
		ENA => '1',      		-- Port A RAM Enable Input
		ENB => '1',      		-- PortB RAM Enable Input
		SSRA => '0',    		-- Port A Synchronous Set/Reset Input
		SSRB => '0',    		-- Port B Synchronous Set/Reset Input
		WEA => WEA(J),      	-- Port A Write Enable Input
		WEB => '0'       		-- Port B Write Enable Input
	);
end generate;

-- Select which block RAM to read from. Depends on the memory depth (1,2,4, or 8 RAMblocks)
RPTR_MEMINDEX_E <= RPTR(13 downto 11) when (NBUFS = 8) else
				"0" & RPTR(12 downto 11) when (NBUFS = 4) else
				"00" & RPTR(11 downto 11) when (NBUFS = 2) else
				"000"; -- when  (NBUFS = 1) 

TX_PAYLOAD_DATA <= DOB(conv_integer(RPTR_MEMINDEX));

-- read pointer management
RPTR_GEN: process(CLK)
begin
	if rising_edge(CLK) then
		if(SYNC_RESET = '1') then
			RPTR <= PTR_MASK;
		else
			RPTR_MEMINDEX <= RPTR_MEMINDEX_E;	-- one CLK delay to read data from the block RAM
			TX_UDP_PAYLOAD_D <= TX_UDP_PAYLOAD;
			
			if(TX_PACKET_SEQUENCE_START = '1') then
				RPTR <= (WPTR0 - 1) and PTR_MASK;	-- points to one address before the start of UDP payload
			elsif(TX_ACTIVE = '1') and (MAC_TX_CTS = '1') and (UDP_LAST_HEADER_BYTE = '1') then	
				RPTR <= (RPTR + 1) and PTR_MASK;
			elsif(TX_ACTIVE = '1') and (MAC_TX_CTS = '1') and (TX_UDP_PAYLOAD = '1') and (TX_BYTE_COUNTER_INC /= PAYLOAD_SIZE_D) then	
				RPTR <= (RPTR + 1) and PTR_MASK;	-- read follow-on UDP payload bytes
			end if;
		end if;
	end if;
end process;
	

--//-- FREEZE INPUTS -----------------------
-- Latch in all key fields at the start trigger, or at the latest during the Ethernet header.

INFO_001: process(CLK)
begin
	if rising_edge(CLK) then
		if(TX_PACKET_SEQUENCE_START = '1') then
			-- latch in all key fields at the start trigger
			TX_DEST_MAC_ADDR <= LAST_MAC;	
		--// shifting large fields
		elsif(MAC_TX_CTS = '1') and (TX_ETHERNET_HEADER = '1') then
			-- sending IP packet: assembling ethernet header
			if (TX_BYTE_COUNTER >= 0) and (TX_BYTE_COUNTER <= 4) then
				-- shift while assembling the tx packet (to minimize size)
				TX_DEST_MAC_ADDR(47 downto 8) <= TX_DEST_MAC_ADDR(39 downto 0);
			end if;
		end if;
	end if;
end process;

INFO_002: process(CLK)
begin
	if rising_edge(CLK) then
		if(TX_PACKET_SEQUENCE_START = '1') then
			-- latch in all key fields at the start trigger
			TX_SOURCE_MAC_ADDR <= MAC_ADDR;
		--// shifting large fields
		elsif(MAC_TX_CTS = '1') and (TX_ETHERNET_HEADER = '1') then
			-- sending IP packet: assembling ethernet header
			if (TX_BYTE_COUNTER >= 6) and (TX_BYTE_COUNTER <= 10) then
				-- shift while assembling the tx packet (to minimize size)
				TX_SOURCE_MAC_ADDR(47 downto 8) <= TX_SOURCE_MAC_ADDR(39 downto 0);
			end if;
		end if;
	end if;
end process;

INFO_003: process(CLK)
begin
	if rising_edge(CLK) then
		if(APP_SOF  ='1') then
			DEST_IP_ADDR_D <= DEST_IP_ADDR;
			IPv4_6n_D <= IPv4_6n;
		elsif(TX_PACKET_SEQUENCE_START = '1') then
			-- latch in all key fields at the start trigger
			TX_DEST_IP_ADDR <= DEST_IP_ADDR_D;	
			TX_IPv4_6n <= IPv4_6n_D;
		--// shifting large fields
		elsif(MAC_TX_CTS = '1') and (TX_IP_HEADER = '1') and (TX_IPv4_6n = '1') then
			-- sending IPv4 packet: assembling IP header
			if(TX_BYTE_COUNTER >= 16) and (TX_BYTE_COUNTER <= 18) then
				-- shift while assembling the tx packet (to minimize size)
				TX_DEST_IP_ADDR(31 downto 8) <= TX_DEST_IP_ADDR(23 downto 0);
			end if;
		elsif(MAC_TX_CTS = '1') and (TX_IP_HEADER = '1') and (IPv6_ENABLED = '1') and (TX_IPv4_6n = '0') then
			-- sending IPv6 packet: assembling IP header
			if(TX_BYTE_COUNTER >= 24) and (TX_BYTE_COUNTER <= 38) then
				-- shift while assembling the tx packet (to minimize size)
				TX_DEST_IP_ADDR(127 downto 8) <= TX_DEST_IP_ADDR(119 downto 0);
			end if;
		end if;
	end if;
end process;

INFO_004: process(CLK)
begin
	if rising_edge(CLK) then
		if(TX_PACKET_SEQUENCE_START = '1') then
			-- latch in all key fields at the start trigger
			if(IPv6_ENABLED = '1') and (IPv4_6n_D = '0') then
				TX_SOURCE_IP_ADDR <= IPv6_ADDR;	
			else
				TX_SOURCE_IP_ADDR(31 downto 0) <= IPv4_ADDR;	
			end if;
		--// shifting large fields
		elsif(MAC_TX_CTS = '1') and (TX_IP_HEADER = '1') and (TX_IPv4_6n = '1') then
			-- sending IPv4 packet: assembling IP header
			if(TX_BYTE_COUNTER >= 12) and (TX_BYTE_COUNTER <= 14) then
				-- shift while assembling the tx packet (to minimize size)
				TX_SOURCE_IP_ADDR(31 downto 8) <= TX_SOURCE_IP_ADDR(23 downto 0);
			end if;
		elsif(MAC_TX_CTS = '1') and (TX_IP_HEADER = '1') and (IPv6_ENABLED = '1') and (TX_IPv4_6n = '0') then
			-- sending IPv6 packet: assembling IP header
			if(TX_BYTE_COUNTER >= 8) and (TX_BYTE_COUNTER <= 22) then
				-- shift while assembling the tx packet (to minimize size)
				TX_SOURCE_IP_ADDR(127 downto 8) <= TX_SOURCE_IP_ADDR(119 downto 0);
			end if;
		end if;
	end if;
end process;

INFO_005: process(CLK)
begin
	if rising_edge(CLK) then
		if(TX_PACKET_SEQUENCE_START = '1') then
			-- Freeze parameters which can change on the A-side of the block ram 
			-- while we are sending the UDP packet to the MAC layer
			PAYLOAD_SIZE_D <= PAYLOAD_SIZE;  -- latch in payload size
			TX_SOURCE_PORT_NO <= SOURCE_PORT_NO;
			TX_DEST_PORT_NO <= DEST_PORT_NO;
		end if;
	end if;
end process;

--//-- TX PACKET SIZE ---------------------------
TX_PACKET_TYPE_GEN_001: process(CLK)
begin
	if rising_edge(CLK) then
		if(TX_PACKET_SEQUENCE_START = '1') then
			-- Freeze parameters which can change on the A-side of the block ram 
			-- while we are sending the UDP packet to the MAC layer
			TX_UDP_LENGTH <= x"0008" + PAYLOAD_SIZE ;	
				-- total UDP frame size, in bytes. Part of UDP pseudo-header needed for UDP checksum computation

			-- total IP frame size, in bytes. IP header is always the standard size of 20 bytes (IPv4) or 40 bytes (IPv6)
			-- = IP header + UDP header + UDP payload
			if(IPv4_6n_D = '1') then
				TX_IP_LENGTH <= PAYLOAD_SIZE + 28;	
			else
				TX_IP_LENGTH <= PAYLOAD_SIZE + 48;	
			end if;
		end if;
	end if;
end process;


--//-- TX PACKET ASSEMBLY   ----------------------
-- Transmit packet is assembled on the fly, consistent with our design goal
-- of minimizing storage in each UDP_TX component.
-- The packet includes the lower layers, i.e. IP layer and Ethernet layer.
-- 
-- First, we tell the outsider arbitration that we are ready to send by raising RTS high.
-- When the transmit path becomes available, the arbiter tells us to go ahead with the transmission MAC_TX_CTS = '1'

TX_PACKET_SEQUENCE_START <= '1' when (STATE_A = 4) and (MAC_TX_CTS = '1') else '0';
	-- Starting sending the Ethernet/IP/UDP packet to the MAC layer.

STATE_MACHINE_001: process(CLK)
begin
	if rising_edge(CLK) then
		if(SYNC_RESET = '1') then
			TX_ACTIVE <= '0';
		elsif (TX_PACKET_SEQUENCE_START = '1') then
			TX_ACTIVE <= '1';
		elsif(MAC_TX_EOF_E = '1') then
			TX_ACTIVE <= '0';
		end if;
	end if;
end process;

TX_SCHEDULER_001: process(CLK)
begin
	if rising_edge(CLK) then
		if(SYNC_RESET = '1') then
			TX_BYTE_COUNTER <= (others => '0');
			TX_BYTE_COUNTER_INC <= (0 => '1', others => '0');
			MAC_TX_DATA_VALID_E <= '0';
			MAC_TX_DATA_VALID <= '0';
			TX_ETHERNET_HEADER <= '0';	
			TX_IP_HEADER <= '0';	
			TX_UDP_HEADER <= '0';	
			TX_UDP_PAYLOAD <= '0';	
		else
			MAC_TX_DATA_VALID <= MAC_TX_DATA_VALID_E;
		
			if(MAC_TX_EOF_E = '1') then
				-- end of UDP frame transmission
				-- For clarity, wait 1 CLK after the end of the previous packet to do anything.
				TX_BYTE_COUNTER <= (others => '0');
				TX_BYTE_COUNTER_INC <= (0 => '1', others => '0');
				MAC_TX_DATA_VALID_E <= '0';
				TX_ETHERNET_HEADER <= '0';	
				TX_IP_HEADER <= '0';	
				TX_UDP_HEADER <= '0';	
				TX_UDP_PAYLOAD <= '0';	
			elsif (TX_PACKET_SEQUENCE_START = '1') then
				-- UDP frame ready to send in the elastic buffer 
				-- initiating tx request. Reset counters. 
				TX_BYTE_COUNTER <= (others => '0');
				TX_BYTE_COUNTER_INC <= (0 => '1', others => '0');
				MAC_TX_DATA_VALID_E <= '0';
				TX_ETHERNET_HEADER <= '1';	
				TX_IP_HEADER <= '0';	
				TX_UDP_HEADER <= '0';	
				TX_UDP_PAYLOAD <= '0';	
			elsif(TX_ACTIVE = '1') and (MAC_TX_CTS = '1') then
				-- one packet is ready to send and MAC requests another byte
				MAC_TX_DATA_VALID_E <= '1';  -- enable path to MAC

				if(TX_ETHERNET_HEADER = '1') and (TX_BYTE_COUNTER = 13) then	
					-- end of Ethernet header (including preamble, SOF, MAC addresses and Ethertype)
					TX_BYTE_COUNTER <= (others => '0');	-- reset byte counter as we enter a new header
					TX_BYTE_COUNTER_INC <= (0 => '1', others => '0');
					TX_ETHERNET_HEADER <= '0';	-- done with Ethernet header.
					TX_IP_HEADER <= '1';	-- entering IP header
				elsif(TX_IP_HEADER = '1') and (TX_BYTE_COUNTER = 19) then	
					-- end of IP header
					TX_BYTE_COUNTER <= (others => '0'); 	-- reset byte counter as we enter a new header
					TX_BYTE_COUNTER_INC <= (0 => '1', others => '0');
					TX_IP_HEADER <= '0';	-- done with IP header.
					TX_UDP_HEADER <= '1';	-- entering UDP header
				elsif(TX_UDP_HEADER = '1') and (TX_BYTE_COUNTER = 7) then	
					-- end of UDP header
					TX_BYTE_COUNTER <= (others => '0'); 	-- reset byte counter as we enter the payload
					TX_BYTE_COUNTER_INC <= (0 => '1', others => '0');
					TX_UDP_HEADER <= '0';	-- done with UDP header.
					if(PAYLOAD_SIZE_D /= 0) then
						TX_UDP_PAYLOAD <= '1';	-- entering UDP payload
					end if;
				elsif(TX_UDP_PAYLOAD = '1') and (TX_BYTE_COUNTER_INC = PAYLOAD_SIZE_D) then	
					-- end of UDP payload
					TX_BYTE_COUNTER <= (others => '0'); 	-- reset byte counter as we enter the payload
					TX_BYTE_COUNTER_INC <= (0 => '1', others => '0');
					TX_UDP_PAYLOAD <= '0';	-- done with UDP payload
				elsif (TX_ETHERNET_HEADER = '1') or (TX_IP_HEADER = '1') or (TX_UDP_HEADER = '1') or (TX_UDP_PAYLOAD = '1') then
					-- regular pointer increment
					TX_BYTE_COUNTER <= TX_BYTE_COUNTER_INC;
					TX_BYTE_COUNTER_INC <= TX_BYTE_COUNTER_INC + 1;
				end if;
			else
				MAC_TX_DATA_VALID_E <= '0';
			end if;
		end if;
	end if;
end process;

UDP_LAST_HEADER_BYTE <= '1' when (TX_UDP_HEADER = '1') and (TX_BYTE_COUNTER = 7) else '0'; 

MAC_TX_EOF_GEN_001: process(CLK)
begin
	if rising_edge(CLK) then
		if(SYNC_RESET = '1') then
			MAC_TX_EOF_E <= '0';
			MAC_TX_EOF_local <= '0';
		else
			MAC_TX_EOF_local <= MAC_TX_EOF_E;	-- 1 CLK delay to read data from block RAM
			
			if(MAC_TX_EOF_E = '1') then
				-- For clarity, wait 1 CLK after the end of the previous packet to do anything.
				 MAC_TX_EOF_E <= '0';
			elsif (TX_PACKET_SEQUENCE_START = '1') then
				-- We have a packet ready to send. Reset. 
				 MAC_TX_EOF_E <= '0';
			elsif(TX_ACTIVE = '1') and (MAC_TX_CTS = '1') then
				-- one packet is ready to send and MAC requests another byte
				if(UDP_LAST_HEADER_BYTE = '1') and  (PAYLOAD_SIZE_D = 0) then
					-- last UDP header byte, empty UDP payload
					MAC_TX_EOF_E <= '1';
				elsif(TX_UDP_PAYLOAD = '1') and (TX_BYTE_COUNTER_INC = PAYLOAD_SIZE_D) then
					MAC_TX_EOF_E <= '1';
				else
					MAC_TX_EOF_E <= '0';
				end if;
			else
				MAC_TX_EOF_E <= '0';
			end if;
		end if;
	end if;
end process;
MAC_TX_EOF <= MAC_TX_EOF_local;


TX_SCHEDULER_002: process(CLK)
begin
	if rising_edge(CLK) then
		if(SYNC_RESET = '1') then
			MAC_TX_DATA_E <= (others => '0');
			MAC_TX_CTS_D <= '0';
		else
			MAC_TX_CTS_D <= MAC_TX_CTS;

			if(MAC_TX_CTS = '1') then
				if(TX_ETHERNET_HEADER = '1') then		
					-- Ethernet frame header
					if(TX_BYTE_COUNTER >= 0) and (TX_BYTE_COUNTER <= 5) then
						MAC_TX_DATA_E <= TX_DEST_MAC_ADDR(47 downto 40);	-- MAC destination (during shift)
					elsif(TX_BYTE_COUNTER >= 6) and (TX_BYTE_COUNTER <= 11) then
						MAC_TX_DATA_E <= TX_SOURCE_MAC_ADDR(47 downto 40);	-- MAC source (during shift)
					elsif(TX_BYTE_COUNTER = 12) then
						MAC_TX_DATA_E <= x"08";		-- Ethertype IP datagram
					elsif(TX_BYTE_COUNTER = 13) then
						MAC_TX_DATA_E <= x"00";		-- Ethertype IP datagram
					end if;
				elsif(TX_IP_HEADER = '1') and (TX_IPv4_6n = '1') then	
					-- IPv4 header
					if(TX_BYTE_COUNTER = 0) then
						MAC_TX_DATA_E <= x"45";		-- IPv4, 5 word header
					elsif(TX_BYTE_COUNTER = 1) then
						MAC_TX_DATA_E <= x"00";		-- TOS x00 unused.
					elsif(TX_BYTE_COUNTER = 2) then
						MAC_TX_DATA_E <=  TX_IP_LENGTH(15 downto 8); 	-- IP packet length in bytes. Fixed upon decision to send datagram.
					elsif(TX_BYTE_COUNTER = 3) then
						MAC_TX_DATA_E <=  TX_IP_LENGTH(7 downto 0); 	-- IP packet length in bytes. Fixed upon decision to send datagram.
					elsif(TX_BYTE_COUNTER = 4) then
						MAC_TX_DATA_E <=  IP_ID(15 downto 8); 	-- 16-bit identification, incremented for each IP datagram.
					elsif(TX_BYTE_COUNTER = 5) then
						MAC_TX_DATA_E <=  IP_ID(7 downto 0); 	 	-- 16-bit identification, incremented for each IP datagram.
					elsif(TX_BYTE_COUNTER = 6) then
						MAC_TX_DATA_E <= x"40";		-- 13-bit fragment offset. Flags: don't fragment, last fragment
					elsif(TX_BYTE_COUNTER = 7) then
						MAC_TX_DATA_E <= x"00";		-- 13-bit fragment offset. Flags: don't fragment, last fragment
					elsif(TX_BYTE_COUNTER = 8) then
						MAC_TX_DATA_E <= x"40";		-- TTL A recommended initial value is 64. 
							-- must match TTL/protocol bytes as inserted above in TX_IP_HEADER_CHECKSUM_001
					elsif(TX_BYTE_COUNTER = 9) then
						MAC_TX_DATA_E <= x"11";		-- protocol: UDP
					elsif(TX_BYTE_COUNTER = 10) then
						MAC_TX_DATA_E <= TX_IP_HEADER_CHECKSUM_FINAL(15 downto 8);		-- IP header checksum
					elsif(TX_BYTE_COUNTER = 11) then
						MAC_TX_DATA_E <= TX_IP_HEADER_CHECKSUM_FINAL(7 downto 0);		-- IP header checksum
					elsif(TX_BYTE_COUNTER >= 12) and (TX_BYTE_COUNTER <= 15) then
						MAC_TX_DATA_E <= TX_SOURCE_IP_ADDR(31 downto 24);	-- IP source (during shift)
					elsif(TX_BYTE_COUNTER >= 16) and (TX_BYTE_COUNTER <= 19) then
						MAC_TX_DATA_E <= TX_DEST_IP_ADDR(31 downto 24);	-- IP destination (during shift)
					end if;
				elsif(TX_IP_HEADER = '1') and (IPv6_ENABLED = '1') and (TX_IPv4_6n = '0') then	
					-- IPv6 header
					if(TX_BYTE_COUNTER >= 8) and (TX_BYTE_COUNTER <= 23) then
						MAC_TX_DATA_E <= TX_SOURCE_IP_ADDR(127 downto 120);	-- IP source (during shift)
					elsif(TX_BYTE_COUNTER >= 24) and (TX_BYTE_COUNTER <= 39) then
						MAC_TX_DATA_E <= TX_DEST_IP_ADDR(127 downto 120);	-- IP source (during shift)
					end if;
				elsif(TX_UDP_HEADER = '1') then		
					-- UDP header
					if(TX_BYTE_COUNTER = 0) then
						MAC_TX_DATA_E <= TX_SOURCE_PORT_NO(15 downto 8);
					elsif(TX_BYTE_COUNTER = 1) then
						MAC_TX_DATA_E <= TX_SOURCE_PORT_NO(7 downto 0);
					elsif(TX_BYTE_COUNTER = 2) then
						MAC_TX_DATA_E <= TX_DEST_PORT_NO(15 downto 8);
					elsif(TX_BYTE_COUNTER = 3) then
						MAC_TX_DATA_E <= TX_DEST_PORT_NO(7 downto 0);
					elsif(TX_BYTE_COUNTER = 4) then
						MAC_TX_DATA_E <= TX_UDP_LENGTH(15 downto 8);	-- UDP frame length (header + payload)
					elsif(TX_BYTE_COUNTER = 5) then
						MAC_TX_DATA_E <= TX_UDP_LENGTH(7 downto 0);	-- UDP frame length (header + payload)
					elsif(TX_BYTE_COUNTER = 6) then
						MAC_TX_DATA_E <= TX_UDP_CHECKSUM_FINAL(15 downto 8);
					elsif(TX_BYTE_COUNTER = 7) then
						MAC_TX_DATA_E <= TX_UDP_CHECKSUM_FINAL(7 downto 0);
					end if;
				end if;
			end if;
		end if;
	end if;
end process;

-- Insert payload data one CLK later (it takes 1 CLK to read data from the block RAM)
TX_SCHEDULER_003: process(CLK)
begin
	if rising_edge(CLK) then
		if(SYNC_RESET = '1') then
			MAC_TX_DATA_local <= (others => '0');
		elsif(MAC_TX_CTS_D = '1') then
			if(TX_UDP_PAYLOAD_D = '1') then	
				-- UDP payload (if applicable)
				MAC_TX_DATA_local <= TX_PAYLOAD_DATA;
			else
				MAC_TX_DATA_local <= MAC_TX_DATA_E;
			end if;
		end if;
	end if;
end process;
MAC_TX_DATA <= MAC_TX_DATA_local;

--// TX IP HEADER CHECKSUM ---------------------------------------------
-- Transmit IP packet header checksum. Only applies to IPv4 (no header checksum in IPv6)
-- We must start the checksum early as the checksum field is not the last word in the header.
TX_IP_HEADER_CHECKSUM_001: process(CLK)
begin
	if rising_edge(CLK) then
		if(SYNC_RESET = '1') then
			TX_IP_HEADER_CKSUM_FLAG <= '0';
		else
			TX_IP_HEADER_D <= TX_IP_HEADER;
			TX_BYTE_COUNTER_D <= TX_BYTE_COUNTER;
		
			-- sums the fields located after the checksum field at an earlier time (i.e. while assembling
			-- the ethernet header)
			-- 1's complement sum (add carry)
			if(MAC_TX_CTS = '1') and (TX_ETHERNET_HEADER = '1') then		
				if(TX_BYTE_COUNTER = 0) then
					TX_IP_HEADER_CKSUM_DATA <= TX_SOURCE_IP_ADDR(31 downto 16);
					TX_IP_HEADER_CKSUM_FLAG <= '1';
				elsif(TX_BYTE_COUNTER = 1) then
					TX_IP_HEADER_CKSUM_DATA <= TX_SOURCE_IP_ADDR(15 downto 0);
					TX_IP_HEADER_CKSUM_FLAG <= '1';
				elsif(TX_BYTE_COUNTER = 2) then
					TX_IP_HEADER_CKSUM_DATA <= TX_DEST_IP_ADDR(31 downto 16);
					TX_IP_HEADER_CKSUM_FLAG <= '1';
				elsif(TX_BYTE_COUNTER = 3) then
					TX_IP_HEADER_CKSUM_DATA <= TX_DEST_IP_ADDR(15 downto 0);
					TX_IP_HEADER_CKSUM_FLAG <= '1';
				elsif(TX_BYTE_COUNTER = 4) then
					TX_IP_HEADER_CKSUM_DATA <= x"4011";	-- must match TTL/protocol bytes as inserted above in TX_SCHEDULER_002
					TX_IP_HEADER_CKSUM_FLAG <= '1';
				else
					TX_IP_HEADER_CKSUM_FLAG <= '0';
				end if;
			elsif(MAC_TX_CTS_D = '1') and (TX_IP_HEADER_D = '1') and (TX_IPv4_6n = '1') 
			and (TX_BYTE_COUNTER_D(0) = '1') and (TX_BYTE_COUNTER_D < 8) then	
				-- IPv4 header before the checksum field(we have already summed the fields after the checksum field)
				TX_IP_HEADER_CKSUM_DATA <= MAC_TX_DATA_local & MAC_TX_DATA_E;
				TX_IP_HEADER_CKSUM_FLAG <= '1';
			else
				TX_IP_HEADER_CKSUM_FLAG <= '0';
			end if;
		end if;
	end if;
end process;

TX_IP_HEADER_CHECKSUM_002: process(CLK)
begin
	if rising_edge(CLK) then
		if(SYNC_RESET = '1') then
			TX_IP_HEADER_CHECKSUM <= (others => '0');	
		elsif(TX_PACKET_SEQUENCE_START = '1') then
			-- initiating tx request.
			-- new tx packet. clear IP header checksum
			TX_IP_HEADER_CHECKSUM <= (others => '0');	
		elsif(TX_IP_HEADER_CKSUM_FLAG = '1') then
			-- 1's complement sum (add carry)
			TX_IP_HEADER_CHECKSUM <= ("0" & TX_IP_HEADER_CHECKSUM(15 downto 0)) + 
									(x"0000" & TX_IP_HEADER_CHECKSUM(16)) + 
									("0" & TX_IP_HEADER_CKSUM_DATA);
		end if;
	end if;
end process;
--// final checksum
-- don't forget to add the last carry immediately at the end of the IP header
TX_IP_HEADER_CHECKSUM_FINAL <= not(TX_IP_HEADER_CHECKSUM(15 downto 0) + ("000" & x"000" & TX_IP_HEADER_CHECKSUM(16))) ;
					

--// TX UDP CHECKSUM ---------------------------------------------
-- UDP frame checksum. 
-- We must start the checksum early (i.e. during the IP header assembly) 
-- as the checksum field is not the last word in the UDP header.
TX_UDP_CHECKSUM_001: process(CLK)
begin
	if rising_edge(CLK) then
		if(SYNC_RESET = '1') then
			TX_UDP_CKSUM_DATA <= (others => '0');
			TX_UDP_CKSUM_FLAG <= '1';
		elsif(MAC_TX_CTS = '1') and (TX_IP_HEADER = '1') and (TX_BYTE_COUNTER(15 downto 4) = 0) then
			-- IPv4 pseudo-header
			case TX_BYTE_COUNTER(3 downto 0) is
				when "0000" => 
					TX_UDP_CKSUM_DATA <= TX_SOURCE_IP_ADDR(31 downto 16);
					TX_UDP_CKSUM_FLAG <= '1';
				when "0001" => 
					TX_UDP_CKSUM_DATA <= TX_SOURCE_IP_ADDR(15 downto 0);
					TX_UDP_CKSUM_FLAG <= '1';
				when "0010" => 
					TX_UDP_CKSUM_DATA <= TX_DEST_IP_ADDR(31 downto 16);
					TX_UDP_CKSUM_FLAG <= '1';
				when "0011" => 
					TX_UDP_CKSUM_DATA <= TX_DEST_IP_ADDR(15 downto 0);
					TX_UDP_CKSUM_FLAG <= '1';
				when "0100" => 
					TX_UDP_CKSUM_DATA <= x"0011";	-- protocol (from IP header) = UDP
					TX_UDP_CKSUM_FLAG <= '1';
				when "0101" => 
					TX_UDP_CKSUM_DATA <= TX_UDP_LENGTH;	-- UDP length (header + payload)
					TX_UDP_CKSUM_FLAG <= '1';
				when "0110" => 
					TX_UDP_CKSUM_DATA <= TX_SOURCE_PORT_NO;	
					TX_UDP_CKSUM_FLAG <= '1';
				when "0111" => 
					TX_UDP_CKSUM_DATA <= TX_DEST_PORT_NO;	
					TX_UDP_CKSUM_FLAG <= '1';
				when "1000" => 
					TX_UDP_CKSUM_DATA <= TX_UDP_LENGTH;	-- UDP length (header + payload) 
					TX_UDP_CKSUM_FLAG <= '1';
				when others => 
					TX_UDP_CKSUM_FLAG <= '0';
			end case;
		else
			TX_UDP_CKSUM_FLAG <= '0';
		end if;
	end if;
end process;

TX_UDP_CHECKSUM_002: process(CLK)
begin
	if rising_edge(CLK) then
		if(SYNC_RESET = '1') then
			TX_UDP_CHECKSUM <= (others => '0');
		elsif(TX_PACKET_SEQUENCE_START = '1') then
			-- initiating tx request. new tx packet. 
			-- assume that frame includes payload data. 
			-- initialize with ready-to-use payload checksum.
			TX_UDP_CHECKSUM <= UDP_PAYLOAD_CKSUM;
		elsif(TX_UDP_CKSUM_FLAG = '1') then
			-- compute during IP header and UDP header
			-- 1's complement sum (add carry)
			TX_UDP_CHECKSUM <= ("0" & TX_UDP_CHECKSUM(15 downto 0)) + 
									 (x"0000" & TX_UDP_CHECKSUM(16)) +
									 ("0" & TX_UDP_CKSUM_DATA); 
		end if;
	end if;
end process;
--// final checksum
-- don't forget to add the last carry immediately at the end of the IP header
TX_UDP_CHECKSUM_FINAL <= not(TX_UDP_CHECKSUM(15 downto 0) + ("0000" & x"000" & TX_UDP_CHECKSUM(16))) ;


--//-- TEST POINTS ---------------------------------
TP(1) <= '1' when (STATE_A = 0) else '0';
TP(2) <= '1' when (STATE_A = 3) else '0';
TP(3) <= RTS_local;
TP(4) <= MAC_TX_EOF_local;
TP(5) <= MAC_TX_CTS;
TP(6) <= TX_ETHERNET_HEADER;
TP(7) <= RT_MAC_RDY;
TP(8) <= RT_NAK;
TP(9) <= TX_PACKET_SEQUENCE_START;
TP(10) <= TX_ACTIVE;

end Behavioral;
