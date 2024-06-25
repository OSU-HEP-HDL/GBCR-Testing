-------------------------------------------------------------
-- MSS copyright 2013
--	Filename:  DHCP_CLIENT.VHD
-- Author: Alain Zarembowitch / MSS
--	Version: 0
--	Date last modified: 11/13/13
-- Inheritance: 	n/a
--
-- description:  
-- DHCP client (on-top of UDP_TX and UDP_RX)
-- Based on RFC2131
-- This client asks DHCP servers for an IP address and network information such as gateway, subnet mask and DNS address.
--
-- Limitations:
-- Client and server are on the same subnet (no relay)
--
-- Usage:
-- 1. A DHCP client can be instantiated (using the DHCP_CLIENT_EN generic parameter in COM540X.vhd), but still
-- enabled/disabled dynamically at run-time using the SYNC_RESET input. Set SYNC_RESET to '1' to disable this server.
-- 2. Proposed IP address is always on the same subnet as this server (i.e. same 1/2/3 MSBs as this server IPv4_ADDR)
-- 4. Limited to 6-byte (Ethernet) hardware addressing

---------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity DHCP_CLIENT is
	generic (
		SIMULATION: std_logic := '0'
			-- 1 during simulation otherwise timers are way too long for practical VHDL simulation
	);
    Port ( 
		--// CLK, RESET
		SYNC_RESET: in std_logic;
			-- set to '1' to disable the DHCP server
		CLK: in std_logic;		-- synchronous clock
			-- Must be a global clocks. No BUFG instantiation within this component.
		TICK_4US: in std_logic;
		TICK_100MS : in std_logic;
			-- 100 ms tick for timer

		--// CLIENT INFO
		MAC_ADDR: in std_logic_vector(47 downto 0);
			-- MAC address. Unique for each network interface card.
			-- Natural byte order: (MSB) 0x000102030405 (LSB) 
			-- as transmitted in the Ethernet packet.
		LAST_IPv4_ADDR: in std_logic_vector(31 downto 0);
			-- last IP address. This DHCP client will use it to request a new IP after power up
			-- to maintain some consistency. Since the FPGA is generally not capable of storing
			-- this information in non-volatile memory, some external device (microcontroller, eeprom, etc)
			-- should be used for persistent storage (preferred, not required)
		
		--// DHCP CLIENT CONFIGURATION: IP address, MAC address, host name
		IPv4_ADDR: out std_logic_vector(31 downto 0);
			-- dynamic IP address. 4 bytes for IPv4
			-- Natural order (MSB) 172.16.1.128 (LSB) as transmitted in the IP frame.
		LEASE_TIME:  out std_logic_vector(31 downto 0);
			-- default lease time in secs
			-- FFFFFF for infinite (TBC)
		SUBNET_MASK:  out std_logic_vector(31 downto 0);
		ROUTER:  out std_logic_vector(31 downto 0);
		DNS1:  out std_logic_vector(31 downto 0);
		DNS2:  out std_logic_vector(31 downto 0);
		
		IP_ID_IN: in std_logic_vector(15 downto 0);
			-- 16-bit IP ID, unique for each datagram. Incremented every time
			-- an IP datagram is sent (not just for this protocol).

		--// Received IP frame
		-- Excludes MAC layer header. Includes IP header.
		IP_RX_DATA: in std_logic_vector(7 downto 0);
		IP_RX_DATA_VALID: in std_logic;	
		IP_RX_SOF: in std_logic;
		IP_RX_EOF: in std_logic;
		IP_BYTE_COUNT: in std_logic_vector(15 downto 0);	
		IP_HEADER_FLAG: in std_logic;
			-- latency: 2 CLKs after MAC_RX_DATA
			-- As the IP frame validity is checked on-the-fly, the user should always check if 
			-- the IP_RX_DATA_VALID is high AT THE END of the IP frame (IP_RX_EOF) to confirm that the 
			-- ENTIRE IP frame is valid. Validity checks already performed (in PACKET_PARSING) are 
			-- (a) destination IP address matches
			-- (b) protocol is IP
			-- (c) correct IP header checksum
			-- IP_BYTE_COUNT is reset at the start of the data field (i.e. immediately after the header)
			-- Always use IP_BYTE_COUNT using the IP_HEADER_FLAG context (inside or outside the IP header?)

		--// IP type, already parsed in PACKET_PARSING (shared code)
		RX_IP_PROTOCOL: in std_logic_vector(7 downto 0);
			-- The protocol information is valid as soon as the 8-bit IP protocol field in the IP header is read.
			-- Information stays until start of following packet.
			-- This component responds to protocol 17 = UDP 
			-- latency: 3 CLK after IP protocol field at byte 9 of the IP header
	  	RX_IP_PROTOCOL_RDY: in std_logic;
			-- 1 CLK wide pulse. 
		RX_SOURCE_IP_ADDR: in std_logic_vector(31 downto 0); 

		--// UDP attributes, already parsed in PACKET_PARSING (shared code)
		RX_UDP_CKSUM: in std_logic_vector(16 downto 0);
			-- UDP checksum (including pseudo-header).
			-- Correct checksum is either x10000 or x00001
		RX_UDP_CKSUM_RDY: in std_logic;
			-- 1 CLK pulse. Latency: 3 CLK after receiving the last UDP byte.

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

architecture Behavioral of DHCP_CLIENT is
--------------------------------------------------------
--      COMPONENTS
--------------------------------------------------------
	COMPONENT UDP_RX
	PORT(
		ASYNC_RESET : IN std_logic;
		CLK : IN std_logic;
		IP_RX_DATA : IN std_logic_vector(7 downto 0);
		IP_RX_DATA_VALID : IN std_logic;
		IP_RX_SOF : IN std_logic;
		IP_RX_EOF : IN std_logic;
		IP_BYTE_COUNT: in std_logic_vector(15 downto 0);	
		IP_HEADER_FLAG : IN std_logic;
		RX_IP_PROTOCOL : IN std_logic_vector(7 downto 0);
		RX_IP_PROTOCOL_RDY : IN std_logic;          
		RX_UDP_CKSUM: in std_logic_vector(16 downto 0);
		RX_UDP_CKSUM_RDY: in std_logic;
		PORT_NO: in std_logic_vector(15 downto 0);
		APP_DATA : OUT std_logic_vector(7 downto 0);
		APP_DATA_VALID : OUT std_logic;
		APP_SOF : OUT std_logic;
		APP_EOF : OUT std_logic;
		APP_SRC_UDP_PORT: OUT std_logic_vector(15 downto 0);			
		TP : OUT std_logic_vector(10 downto 1)
		);
	END COMPONENT;

	COMPONENT UDP_TX
	generic (
		NBUFS: integer ;
		IPv6_ENABLED: std_logic
	);
	PORT(
		CLK : IN std_logic;
		SYNC_RESET : IN std_logic;
		TICK_4US: in std_logic;
		APP_DATA : IN std_logic_vector(7 downto 0);
		APP_DATA_VALID : IN std_logic;
		APP_SOF : IN std_logic;
		APP_EOF : IN std_logic;
		APP_CTS : OUT std_logic;
		DEST_IP_ADDR: in std_logic_vector(127 downto 0);	
		DEST_PORT_NO : IN std_logic_vector(15 downto 0);
		SOURCE_PORT_NO : IN std_logic_vector(15 downto 0);
		IPv4_6n: in std_logic;
		MAC_ADDR: in std_logic_vector(47 downto 0);
		IPv4_ADDR: in std_logic_vector(31 downto 0);
		IPv6_ADDR: in std_logic_vector(127 downto 0);
		IP_ID: in std_logic_vector(15 downto 0);
		ACK : OUT std_logic;
		NAK : OUT std_logic;
		RT_IP_ADDR : OUT std_logic_vector(31 downto 0);
		RT_REQ_RTS: out std_logic;
		RT_REQ_CTS: in std_logic;
		RT_MAC_REPLY : IN std_logic_vector(47 downto 0);
		RT_MAC_RDY : IN std_logic;
		RT_NAK: in std_logic;
		MAC_TX_DATA : OUT std_logic_vector(7 downto 0);
		MAC_TX_DATA_VALID : OUT std_logic;
		MAC_TX_EOF : OUT std_logic;
		MAC_TX_CTS : IN std_logic;          
		RTS: out std_logic := '0';
		TP : OUT std_logic_vector(10 downto 1)
		);
	END COMPONENT;
--------------------------------------------------------
--     SIGNALS
--------------------------------------------------------
--// RESET ------------------------------------
signal SYNC_RESET_local: std_logic := '0';

--// RANDOM GENERATOR ------------------------------------
signal RANDOM_NO: std_logic_vector(47 downto 0) := (others => '0');
signal RANDOM_NO_REQ: std_logic := '0';

--// TIME ------------------------------------------------
signal TIMER1: std_logic_vector(7 downto 0) := (others => '0');
signal TIMER2: std_logic_vector(7 downto 0) := (others => '0');
constant DISCOVER_RETRANSMIT: std_logic_vector(TIMER1'left downto 0) := std_logic_vector(to_unsigned(40,TIMER1'length));	-- 4s
constant COLLECT_DHCPOFFERS: std_logic_vector(TIMER1'left downto 0) := std_logic_vector(to_unsigned(20,TIMER1'length));	-- 2s
constant AWAIT_DHCPACK: std_logic_vector(TIMER1'left downto 0) := std_logic_vector(to_unsigned(20,TIMER1'length));	-- 2s
signal TIME_CNTR: std_logic_vector(15 downto 0) := (others => '0');
signal CNTR10: std_logic_vector(3 downto 0) := (others => '0');
signal TIME_CNTR_AT_DHCPDISCOVER: std_logic_vector(15 downto 0) := (others => '0');
signal LEASE_TIMER: std_logic_vector(31 downto 0) := (others => '0');

--// DHCP RECEIVE PATH ------------------------------------------------
signal DHCP_RX_BYTE_COUNT: std_logic_vector(9 downto 0) := (others => '0');

signal DHCP_RX_SOURCE_PORT: std_logic_vector(15 downto 0) := (others => '0');
signal DHCP_RX_DATA: std_logic_vector(7 downto 0) := (others => '0');
signal DHCP_RX_DATA_D: std_logic_vector(7 downto 0) := (others => '0');
signal DHCP_RX_DATA_VALID: std_logic := '0';
signal DHCP_RX_DATA_VALID_D: std_logic := '0';
signal DHCP_RX_SOF: std_logic := '0';
signal DHCP_RX_SOF_D: std_logic := '0';
signal DHCP_RX_EOF: std_logic := '0';
signal DHCP_RX_EOF_D: std_logic := '0';
signal DHCP_RX_EOF_D2: std_logic := '0';
signal XID_FIELD: std_logic := '0'; 
signal FLAGS_FIELD: std_logic := '0';
signal CIADDR_FIELD: std_logic := '0';
signal YIADDR_FIELD: std_logic := '0';
signal GIADDR_FIELD: std_logic := '0';
signal MAGIC_COOKIE_FIELD: std_logic := '0'; 
signal CLIENT_MAC_ADDR_FIELD: std_logic := '0'; 
signal XID: std_logic_vector(31 downto 0) := (others => '0');
signal RX_XID: std_logic_vector(31 downto 0) := (others => '0');
--signal RX_FLAGS: std_logic_vector(15 downto 0) := (others => '0');
--signal RX_CIADDR: std_logic_vector(31 downto 0) := (others => '0');
signal RX_YIADDR: std_logic_vector(31 downto 0) := (others => '0');
--signal RX_GIADDR: std_logic_vector(31 downto 0) := (others => '0');
signal RX_CLIENT_MAC_ADDR: std_logic_vector(47 downto 0) := (others => '0');
signal RX_MAGIC_COOKIE: std_logic_vector(31 downto 0) := (others => '0');
constant MAGIC_COOKIE: std_logic_vector(31 downto 0) := x"63825363";
signal DHCP_READ_STATE: integer range 0 to 3 := 0;
signal DHCP_OPTION: std_logic_vector(7 downto 0) := (others => '0');		
signal DHCP_MESSAGE_LENGTH: std_logic_vector(7 downto 0) := (others => '0');		
signal DHCP_MESSAGE_LENGTH_CNTR: std_logic_vector(7 downto 0) := (others => '0');		
signal DHCP_MESSAGE: std_logic_vector(95 downto 0) := (others => '0');		
signal DHCP_MESSAGE_TYPE: std_logic_vector(3 downto 0) := (others => '0');		
signal DHCP_SERVER_IP_ADDR: std_logic_vector(31 downto 0) := (others => '0');		
signal RX_IP_ADDR_LEASE_TIME: std_logic_vector(31 downto 0) := (others => '0');
signal RX_SUBNET_MASK: std_logic_vector(31 downto 0) := (others => '0');
signal RX_ROUTER: std_logic_vector(31 downto 0) := (others => '0');
signal RX_DNS1: std_logic_vector(31 downto 0) := (others => '0');
signal RX_DNS2: std_logic_vector(31 downto 0) := (others => '0');

signal RX_VALID: std_logic := '0'; 
signal RECEIVED_DHCPOFFERS: std_logic := '0'; 
signal BEST_DHCP_SERVER_IP_ADDR: std_logic_vector(31 downto 0) := (others => '0'); 
signal BEST_RX_YIADDR: std_logic_vector(31 downto 0) := (others => '0'); 
			
signal EVENT1: std_logic := '0'; 
signal EVENT2: std_logic := '0'; 
signal EVENT3: std_logic := '0'; 
signal EVENT4: std_logic := '0'; 
signal EVENT5: std_logic := '0'; 
signal STATE: integer range 0 to 15 := 0;

signal IPv4_ADDR_local: std_logic_vector(31 downto 0) := (others => '0');

--//-- COMPOSE REPLY --------------------------
signal DEST_IPv4_ADDR: std_logic_vector(31 downto 0) := (others => '0');
signal DEST_MAC_ADDR: std_logic_vector(47 downto 0) := (others => '0');
signal WPTR: std_logic_vector(8 downto 0) := (others => '0');
signal UDP_TX_DATA: std_logic_vector(7 downto 0) := (others => '0');
signal UDP_TX_DATA_VALID: std_logic := '0'; 
signal UDP_TX_SOF: std_logic := '0'; 
signal UDP_TX_EOF: std_logic := '0'; 
signal UDP_TX_CTS: std_logic := '0'; 
signal UDP_TX_ACK_local: std_logic := '0'; 
signal UDP_TX_NAK_local: std_logic := '0'; 
signal MAC_TX_EOF_local: std_logic := '0'; 

--------------------------------------------------------
--      IMPLEMENTATION
--------------------------------------------------------
begin

--// RESET ------------------------------------
-- we must hold the DHCP client in internal reset until the MAC_ADDR is defined.
RESET_001: process(CLK)
begin
	if rising_edge(CLK) then
		if(MAC_ADDR = 0) then
			SYNC_RESET_local <= '1';
		else
			SYNC_RESET_local <= SYNC_RESET;
		end if;
	end if;
end process;

--// RANDOM GENERATOR ------------------------------------
-- The DHCP protocol requires random delays (for example for sending the first DHCPDISCOVER message).
-- We use the MAC address as seed. 
RANDOM_GEN_001: process(CLK)
begin
	if rising_edge(CLK) then
		if (SYNC_RESET_local = '1') then
			RANDOM_NO <= MAC_ADDR(47 downto 0);
		elsif(RANDOM_NO_REQ = '1') then
			-- for every subsequent request, get a new random number
			RANDOM_NO(47 downto 1) <= RANDOM_NO(46 downto 0);
			RANDOM_NO(0) <= ((RANDOM_NO(47) xnor RANDOM_NO(46)) xnor RANDOM_NO(20)) xnor RANDOM_NO(19);	-- Xilinx XAPP 052
		end if;
	end if;
end process;

-- request next random number: events triggering a new draw
RANDOM_GEN_002: process(CLK)
begin
	if rising_edge(CLK) then
		if (SYNC_RESET_local = '1') then
			RANDOM_NO_REQ <= '0'; 
		elsif(STATE = 0) then
			-- 1st draw.. random delay before sending DHCPDISCOVER
			RANDOM_NO_REQ <= '1'; 
		elsif(STATE = 1) then
			-- multiple draws before selecting XID
			RANDOM_NO_REQ <= '1'; 
		elsif(STATE = 3) and (WPTR = 0) then
			-- pick a new XID for each DHCPDISCOVER restart
			RANDOM_NO_REQ <= '1'; 
		else
			RANDOM_NO_REQ <= '0'; 
		end if;
	end if;
end process;


--// TIME ------------------------------------------------
-- track relative time in secs.
TIME_GEN_001: process(CLK)
begin
	if rising_edge(CLK) then
		if (SYNC_RESET_local = '1') then
			TIME_CNTR <= (0 => '1', others => '0');
			CNTR10 <= (others => '0');
		elsif(TICK_100MS = '1') then
			if(CNTR10 = 9) then
				-- TIME_CNTR units = seconds
				CNTR10 <= (others => '0');
				TIME_CNTR <= TIME_CNTR + 1;
			else
				CNTR10 <= CNTR10 + 1;
			end if;
		end if;
	end if;
end process;

-- Freeze time value upon sending DHCPDISCOVER (same value MUST be used in DHCPREQUEST)
TIME_GEN_002: process(CLK)
begin
	if rising_edge(CLK) then
		if(STATE = 3) and (WPTR = 0) then
			-- start of DHCPDISCOVER
			TIME_CNTR_AT_DHCPDISCOVER <= TIME_CNTR;
		end if;
	end if;
end process;

-- lease time countdown
TIME_GEN_003: process(CLK)
begin
	if rising_edge(CLK) then
		if (SYNC_RESET_local = '1') then
			LEASE_TIMER <= (others => '0');
		elsif (STATE = 9) and (EVENT3 = '1') then
			-- lease time defined
			--LEASE_TIMER <= RX_IP_ADDR_LEASE_TIME;
			-- TEST TEST TEST
			LEASE_TIMER <= x"00000010";
		elsif(TICK_100MS = '1') and (CNTR10 = 9) and (LEASE_TIMER /= 0) then
			-- LEASE_TIMER units = seconds
			LEASE_TIMER <= LEASE_TIMER - 1;
		end if;
	end if;
end process;


--// DHCP RECEIVE PATH ------------------------------------------------
-- DHCP is encapsulated within a UDP frame
	UDP_RX_001: UDP_RX 
	PORT MAP(
		ASYNC_RESET => SYNC_RESET_local,
		CLK => CLK,
		IP_RX_DATA => IP_RX_DATA,
		IP_RX_DATA_VALID => IP_RX_DATA_VALID,
		IP_RX_SOF => IP_RX_SOF,
		IP_RX_EOF => IP_RX_EOF,
		IP_BYTE_COUNT => IP_BYTE_COUNT,
		IP_HEADER_FLAG => IP_HEADER_FLAG,
		RX_IP_PROTOCOL => RX_IP_PROTOCOL,
		RX_IP_PROTOCOL_RDY => RX_IP_PROTOCOL_RDY,
		RX_UDP_CKSUM => RX_UDP_CKSUM,
		RX_UDP_CKSUM_RDY => RX_UDP_CKSUM_RDY,
		-- configuration
		PORT_NO => x"0044",	-- 68 is the DHCP client port
		-- DHCP rx interface
		APP_DATA => DHCP_RX_DATA,
		APP_DATA_VALID => DHCP_RX_DATA_VALID, 
		APP_SOF => DHCP_RX_SOF,
		APP_EOF => DHCP_RX_EOF,
		APP_SRC_UDP_PORT => DHCP_RX_SOURCE_PORT,
		TP => open
	);

-- keep track of the received DHCP rx pointer
-- Pointer aligned with DHCP_RX_DATA_VALID_D
DHCP_RX_BYTE_COUNT_GEN: process(CLK)
begin
	if rising_edge(CLK) then
		DHCP_RX_DATA_D <= DHCP_RX_DATA;
		DHCP_RX_DATA_VALID_D <= DHCP_RX_DATA_VALID;
		DHCP_RX_SOF_D <= DHCP_RX_SOF;
		DHCP_RX_EOF_D <= DHCP_RX_EOF;
		
		if(DHCP_RX_SOF = '1') then
			DHCP_RX_BYTE_COUNT <= (others => '0');
		elsif(DHCP_RX_DATA_VALID = '1') then
			if(DHCP_RX_BYTE_COUNT(9) = '0') then	-- max 512. should not normally happen. 
				DHCP_RX_BYTE_COUNT <= DHCP_RX_BYTE_COUNT + 1;
			end if;
		end if;
	end if;
end process;

-- capture relevant fields
GET_FIELDS_001: process(CLK)
begin
	if rising_edge(CLK) then
		if(DHCP_RX_DATA_VALID_D = '1') then
			if(DHCP_RX_BYTE_COUNT = 3) then
				XID_FIELD <= '1';
			elsif(DHCP_RX_BYTE_COUNT = 7) then
				-- clear all fields
				XID_FIELD <= '0';
			end if;
			if(DHCP_RX_BYTE_COUNT = 9) then
				FLAGS_FIELD <= '1';
			elsif(DHCP_RX_BYTE_COUNT = 11) then
				FLAGS_FIELD <= '0';
			end if;
			-- client IP address
			if(DHCP_RX_BYTE_COUNT = 11) then
				CIADDR_FIELD <= '1';
			elsif(DHCP_RX_BYTE_COUNT = 15) then
				CIADDR_FIELD <= '0';
			end if;
			-- your (client) IP address
			if(DHCP_RX_BYTE_COUNT = 15) then
				YIADDR_FIELD <= '1';
			elsif(DHCP_RX_BYTE_COUNT = 19) then
				YIADDR_FIELD <= '0';
			end if;
			if(DHCP_RX_BYTE_COUNT = 23) then
				GIADDR_FIELD <= '1';
			elsif(DHCP_RX_BYTE_COUNT = 27) then
				GIADDR_FIELD <= '0';
			end if;
			-- assumes a 6-byte Ethernet address (out of 16-byte field)
			if(DHCP_RX_BYTE_COUNT = 27) then
				CLIENT_MAC_ADDR_FIELD <= '1';
			elsif(DHCP_RX_BYTE_COUNT = 33) then
				-- clear all fields
				CLIENT_MAC_ADDR_FIELD <= '0';
			end if;
			if(DHCP_RX_BYTE_COUNT = 235) then
				MAGIC_COOKIE_FIELD <= '1';
			elsif(DHCP_RX_BYTE_COUNT = 239) then
				-- clear all fields
				MAGIC_COOKIE_FIELD <= '0';
			end if;
		end if;
	end if;
end process;

GET_FIELDS_002: process(CLK)
begin
	if rising_edge(CLK) then
		if(DHCP_RX_DATA_VALID_D = '1') then

			if(DHCP_RX_SOF_D = '1') then
				-- clear all fields
				RX_XID <= (others => '0');
			elsif(XID_FIELD = '1') then
				-- transaction ID
				RX_XID <= RX_XID(23 downto 0) & DHCP_RX_DATA_D;
			end if;

--			if(DHCP_RX_SOF_D = '1') then
--				RX_FLAGS <= (others => '0');
--			elsif(FLAGS_FIELD = '1') then
--				RX_FLAGS <= RX_FLAGS(7 downto 0) & DHCP_RX_DATA_D;
--			end if;

--			-- client IP address
--			if(DHCP_RX_SOF_D = '1') then
--				RX_CIADDR <= (others => '0');
--			elsif(CIADDR_FIELD = '1') then
--				RX_CIADDR <= RX_CIADDR(23 downto 0) & DHCP_RX_DATA_D;
--			end if;

			-- your (client) IP address
			if(DHCP_RX_SOF_D = '1') then
				RX_YIADDR <= (others => '0');
			elsif(YIADDR_FIELD = '1') then
				RX_YIADDR <= RX_YIADDR(23 downto 0) & DHCP_RX_DATA_D;
			end if;

--			if(DHCP_RX_SOF_D = '1') then
--				RX_GIADDR <= (others => '0');
--			elsif(GIADDR_FIELD = '1') then
--				RX_GIADDR <= RX_GIADDR(23 downto 0) & DHCP_RX_DATA_D;
--			end if;

			if(DHCP_RX_SOF_D = '1') then
				-- clear all fields
				RX_CLIENT_MAC_ADDR <= (others => '0');
			elsif(CLIENT_MAC_ADDR_FIELD = '1') then
				-- transaction ID
				RX_CLIENT_MAC_ADDR <= RX_CLIENT_MAC_ADDR(39 downto 0) & DHCP_RX_DATA_D;
			end if;

			if(DHCP_RX_SOF_D = '1') then
				RX_MAGIC_COOKIE <= (others => '0');
			elsif(MAGIC_COOKIE_FIELD = '1') then
				RX_MAGIC_COOKIE <= RX_MAGIC_COOKIE(23 downto 0) & DHCP_RX_DATA_D;
			end if;
		end if;
	end if;
end process;
		
-- parse the variable-length DHCP option fields, starting immediately after the magic cookie		
PARSE_DHCP_FIELDS: process(CLK)
begin
	if rising_edge(CLK) then 
		if(SYNC_RESET_local = '1') then
			DHCP_READ_STATE <= 0;
		elsif(MAGIC_COOKIE_FIELD = '1') then 
			-- magic cookie immediately preceeds the DHCP options
			DHCP_READ_STATE <= 1;
			-- clear previous option fields
			DHCP_MESSAGE_TYPE <= (others => '0');
			DHCP_SERVER_IP_ADDR <= (others => '0');
			RX_IP_ADDR_LEASE_TIME <= (others => '0');
			RX_SUBNET_MASK <= (others => '0');
			RX_ROUTER <= (others => '0');
			RX_DNS1 <= (others => '0');
			RX_DNS2 <= (others => '0');
			
		elsif(DHCP_RX_DATA_VALID_D = '1') then
			if(DHCP_READ_STATE = 1) then
				if(DHCP_RX_DATA_D = x"FF") then
					-- end of DHCP options
					DHCP_READ_STATE <= 0;
				else	
					DHCP_READ_STATE <= 2;
					DHCP_OPTION <= DHCP_RX_DATA_D;
					DHCP_MESSAGE <= (others => '0');	-- clear message field before next option
				end if;
			elsif(DHCP_READ_STATE = 2) then
				DHCP_READ_STATE <= 3;
				DHCP_MESSAGE_LENGTH <= DHCP_RX_DATA_D;
				DHCP_MESSAGE_LENGTH_CNTR <= DHCP_RX_DATA_D;
			elsif(DHCP_READ_STATE = 3) then
				if(DHCP_MESSAGE_LENGTH_CNTR = 1) then
					-- reached end of DHCP message
					DHCP_READ_STATE <= 1;
					-- save in various fields
					if(DHCP_OPTION = 53) then
						-- DHCP message type
						DHCP_MESSAGE_TYPE <= DHCP_RX_DATA_D(3 downto 0);	-- 1-8
					end if;
					if(DHCP_OPTION = 54) then
						-- DHCP server identifier
						DHCP_SERVER_IP_ADDR <= DHCP_MESSAGE(23 downto 0) & DHCP_RX_DATA_D;	-- 4 bytes
					end if;
					if(DHCP_OPTION = 51) then
						-- IP address lease time
						RX_IP_ADDR_LEASE_TIME <= DHCP_MESSAGE(23 downto 0) & DHCP_RX_DATA_D;	-- 4 bytes
					end if;
					if(DHCP_OPTION = 1) then
						-- subnet mask
						RX_SUBNET_MASK <= DHCP_MESSAGE(23 downto 0) & DHCP_RX_DATA_D;	-- 4 bytes
					end if;
					if(DHCP_OPTION = 3) then
						-- router
						RX_ROUTER <= DHCP_MESSAGE(23 downto 0) & DHCP_RX_DATA_D;	-- 4 bytes
					end if;
					if(DHCP_OPTION = 6) then
						-- DNS
						if(DHCP_MESSAGE_LENGTH = 4) then	-- 4 bytes: 1 DNS
							RX_DNS1 <= DHCP_MESSAGE(23 downto 0) & DHCP_RX_DATA_D;	-- 4 bytes
							RX_DNS2 <= (others => '0');
						elsif(DHCP_MESSAGE_LENGTH = 8) then	-- 8 bytes: 2 DNSs
							RX_DNS1 <= DHCP_MESSAGE(56 downto 24);	
							RX_DNS2 <= DHCP_MESSAGE(23 downto 0) & DHCP_RX_DATA_D;	
						end if;
					end if;

				else
					DHCP_MESSAGE <= DHCP_MESSAGE(87 downto 0) & DHCP_RX_DATA_D;
					DHCP_MESSAGE_LENGTH_CNTR <= DHCP_MESSAGE_LENGTH_CNTR - 1;
				end if;
			end if;
		end if;
	end if;
end process;

-- check incoming message validity
-- ready at DHCP_RX_EOF_D2
VALID_CHECK_001: 	process(CLK)
begin
	if rising_edge(CLK) then
		DHCP_RX_EOF_D2 <= DHCP_RX_EOF_D;

		if(DHCP_RX_SOF_D = '1') then
			RX_VALID <= '1';	-- valid by default, until proven otherwise
		elsif(DHCP_RX_EOF_D = '1') and (DHCP_RX_DATA_VALID_D = '0') then 
			-- invalid UDP message
			RX_VALID <= '0';	
		elsif(DHCP_RX_EOF_D = '1') and (RX_MAGIC_COOKIE /= x"63825363") then
			-- invalid magic cookie
			RX_VALID <= '0';	
		elsif(DHCP_RX_EOF_D = '1') and (RX_CLIENT_MAC_ADDR /= MAC_ADDR) then
			-- non-matching client MAC address (spoofing?)
			RX_VALID <= '0';	
		elsif(DHCP_RX_EOF_D = '1') and (RX_XID /= XID) then
			-- non-matching XID
			RX_VALID <= '0';	
		end if;
	end if;
end process;

-- select best DHCPOFFER response
-- criteria: the one that matches LAST_IPv4_ADDR, otherwise the first response
BEST_DHCPOFFER_001: process(CLK)
begin
	if rising_edge(CLK) then
		if(SYNC_RESET_local = '1') then
			RECEIVED_DHCPOFFERS <= '0';
			BEST_DHCP_SERVER_IP_ADDR <= (others => '0');
			BEST_RX_YIADDR <= (others => '0');
		elsif(STATE = 4) and (MAC_TX_EOF_local = '1') then
			-- sending DHCPDISCOVER
			RECEIVED_DHCPOFFERS <= '0';
		elsif(EVENT1 = '1') then
			-- valid DHCPOFFER
			RECEIVED_DHCPOFFERS <= '1';
			if(RECEIVED_DHCPOFFERS = '0') then
				-- first DHCPOFFER after DHCPDISCOVER
				BEST_DHCP_SERVER_IP_ADDR <= DHCP_SERVER_IP_ADDR;
				BEST_RX_YIADDR <= RX_YIADDR;
			elsif(RX_YIADDR = LAST_IPv4_ADDR) then
				-- this DHCPOFFER matches the IP address last assigned to this device. Better choice.
				BEST_DHCP_SERVER_IP_ADDR <= DHCP_SERVER_IP_ADDR;
				BEST_RX_YIADDR <= RX_YIADDR;
			end if;
		end if;
	end if;
end process;

-- change IP address
CHANGE_IP_001: process(CLK)
begin
	if rising_edge(CLK) then
		if(SYNC_RESET_local = '1') then
			IPv4_ADDR_local <= (others => '0');
		elsif(EVENT2 = '1') then
			IPv4_ADDR_local <= BEST_RX_YIADDR;
		end if;
	end if;
end process;

IPv4_ADDR <= IPv4_ADDR_local;

-- report DHCP client configuration to the device
CONFIG_OUT_001: process(CLK)
begin
	if rising_edge(CLK) then
		if(SYNC_RESET_local = '1') then
			LEASE_TIME <= (others => '0');
			SUBNET_MASK <= (others => '0');
			ROUTER <= (others => '0');
			DNS1 <= (others => '0');
			DNS2 <= (others => '0');
		elsif (STATE = 9) and (EVENT3 = '1') then
			LEASE_TIME <= RX_IP_ADDR_LEASE_TIME;
			SUBNET_MASK <= RX_SUBNET_MASK;
			ROUTER <= RX_ROUTER;
			DNS1 <= RX_DNS1;
			DNS2 <= RX_DNS2;
		end if;
	end if;
end process;
		
--//-- EVENTS ---------------------------------------------------

-- 1 = valid DHCPOFFER message 
EVENT1 <= '1' when (DHCP_RX_EOF_D2 = '1') and (RX_VALID = '1') and (DHCP_MESSAGE_TYPE = 2) and (STATE = 6) else '0';

-- 2 = finished sending DHCPREQUEST. Time to change our IP address since the follow-on DHCPACK message
-- from the DHCP server is directed to the requested IP address.
EVENT2 <= '1' when (STATE = 8) and (MAC_TX_EOF_local = '1') else '0';

-- 3 = valid DHCPACK message from the expected DHCP server after a DHCPREQUEST
EVENT3 <= '1' when (DHCP_RX_EOF_D2 = '1') and (RX_VALID = '1') and (DHCP_MESSAGE_TYPE = 5) 
					and (RX_SOURCE_IP_ADDR = BEST_DHCP_SERVER_IP_ADDR) else '0';

-- 4 = valid DHCPNAK message from the expected DHCP server
EVENT4 <= '1' when (DHCP_RX_EOF_D2 = '1') and (RX_VALID = '1') and (DHCP_MESSAGE_TYPE = 6) 
					and (RX_SOURCE_IP_ADDR = BEST_DHCP_SERVER_IP_ADDR) else '0';
					
-- 5 = lease time expired
EVENT5 <= '1' when (LEASE_TIMER = 0) else '0';					

--//-- STATE MACHINE ---------------------------------------------------
STATE_GEN_001: process(CLK) 
begin
	if rising_edge(CLK) then
		if(SYNC_RESET_local = '1') then
			STATE <= 0;	-- INIT STATE
			-- initialize timers
			TIMER1 <= (others => '0');
			TIMER2 <= (others => '0');
		elsif(STATE = 0) and (RANDOM_NO /= 0) then
			-- arm timer with random number between 0.1 - 12.6s, before sending DHCPDISCOVER
			TIMER1(6 downto 0) <= RANDOM_NO(6 downto 0);
			-- request next random number
			TIMER1(TIMER1'left downto 7) <= (others => '0');
			STATE <= 1;
		elsif(STATE = 1) and (TIMER1 = 0) then
			-- at the end of the random delay 
			-- send DHCPDISCOVER. 
			STATE <= 3;
			TIMER1 <= DISCOVER_RETRANSMIT;	-- defensive. should never happen.
		elsif(STATE = 3) and (UDP_TX_ACK_local = '1') then 
			-- composed UDP reply. UDP confirmed. awaiting MAC confirmation.
			STATE <= 4;
		elsif(STATE = 3) and (UDP_TX_NAK_local = '1') then 
			-- composed UDP reply. NAK from UDP_TX (abnormal). 
			-- Wait before retransmitting DHCPDISCOVER.
			STATE <= 5;
			TIMER1 <= DISCOVER_RETRANSMIT;
		elsif(STATE = 4) and (MAC_TX_EOF_local = '1') then 
			-- MAC transmission completion confirmed. Awaiting DHCHOFFERs
			-- await responses from possible multiple DHCP servers. 
			STATE <= 6;
			TIMER1 <= COLLECT_DHCPOFFERS;	-- wait to collect all DHCPOFFERs
		elsif((STATE = 3) or (STATE = 4) or (STATE = 5)) and (TIMER1 = 0) then
			-- retry sending DHCPDISCOVER
			STATE <= 5;
			TIMER1 <= DISCOVER_RETRANSMIT;	-- defensive. should never happen.
		elsif(STATE = 6) and (TIMER1 = 0) then
			if (RECEIVED_DHCPOFFERS = '1') then
				-- collected at least one DHCPOFFER. Start sending DHCPREQUEST
				STATE <= 7;
				TIMER1 <= DISCOVER_RETRANSMIT;	-- defensive. should never happen.
			else
				-- received no DHCPOFFER
				-- Wait before retransmitting DHCPDISCOVER.
				STATE <= 5;
				TIMER1 <= DISCOVER_RETRANSMIT;
			end if;
		elsif(STATE = 7) and (UDP_TX_ACK_local = '1') then 
			-- composed UDP reply. UDP confirmed. awaiting MAC confirmation.
			STATE <= 8;
		elsif(STATE = 7) and (UDP_TX_NAK_local = '1') then 
			-- composed UDP reply. NAK from UDP_TX (abnormal). 
			-- Wait before retransmitting DHCPDISCOVER.
			STATE <= 5;
			TIMER1 <= DISCOVER_RETRANSMIT;
		elsif(STATE = 8) and (MAC_TX_EOF_local = '1') then 
			-- MAC transmission completion confirmed. Awaiting DHCHACK
			STATE <= 9;
			TIMER1 <= AWAIT_DHCPACK;	-- Awaiting DHCPACK
		elsif((STATE = 7) or (STATE = 8) or (STATE = 9)) and (TIMER1 = 0) then
			-- retry sending DHCPDISCOVER
			STATE <= 5;
			TIMER1 <= DISCOVER_RETRANSMIT;	-- defensive. should never happen.
		elsif (STATE = 9) and (EVENT3 = '1') then 
			-- received a valid DHCPACK
			STATE <= 10;	-- BOUND state
		elsif (STATE = 9) and (EVENT4 = '1') then 
			-- received a valid DHCPNAK
			-- Wait before retransmitting DHCPDISCOVER.
			STATE <= 5;
			TIMER1 <= DISCOVER_RETRANSMIT;
		elsif(STATE = 9) and (TIMER1 = 0) then
			-- timeout waiting for a valid DHCPACK
			-- Wait before retransmitting DHCPDISCOVER.
			STATE <= 5;
			TIMER1 <= DISCOVER_RETRANSMIT;
		elsif(STATE = 10) and (EVENT5 = '1') then
			-- BOUND state, lease expired. Renew.
			STATE <= 7;
			TIMER1 <= DISCOVER_RETRANSMIT;	-- defensive. should never happen.
		elsif ((TICK_100MS = '1') and (SIMULATION = '0')) or  ((TICK_4US = '1') and (SIMULATION = '1')) then
			-- countdown timer until expiration (0). Accelerate during simulation.
			if(TIMER1 /= 0) then
				TIMER1 <= TIMER1 - 1;
			end if;
			if(TIMER2 /= 0) then
				TIMER2 <= TIMER2 - 1;
			end if;
		end if;
	end if;
end process;

--//-- TRANSMIT FIELDS ------------------------------------------
-- XID
XID_GEN: process(CLK)
begin
	if rising_edge(CLK) then
		if(SYNC_RESET_local = '1') then
			XID <= (others => '0');
		elsif(STATE = 3) and (WPTR = 0) then
			-- pick a random ID before sending DHCPDISCOVER. Changes at each retransmission.
			XID <= RANDOM_NO(31 downto 0);
		end if;
	end if;
end process;


--//-- COMPOSE MESSAGES TO DHCP SERVER --------------------------
WPTR_GEN: process(CLK)
begin
	if rising_edge(CLK) then
		if(SYNC_RESET_local = '1') then
			WPTR <= (others => '0');
			
		elsif(STATE = 3) or (STATE = 7) then
			-- DHCPDISCOVER or DHCPREQUEST message
			if(UDP_TX_CTS = '1') then
				WPTR <= WPTR + 1;
			end if;
		else
			WPTR <= (others => '0');
		end if;
		
	end if;
end process;
		
COMPOSE_TX: process(CLK)
begin
	if rising_edge(CLK) then
		if(SYNC_RESET_local = '1') then
			UDP_TX_DATA_VALID <= '0';
			UDP_TX_SOF <= '0';
			UDP_TX_EOF <= '0';
		elsif(STATE = 3) then
			-- DHCPDISCOVER message
			-- UDP destination IP address, broadcast 
			DEST_IPv4_ADDR <= x"FFFFFFFF";
			DEST_MAC_ADDR <= x"FFFFFFFFFFFF";
			case WPTR is
				when "000000000" => 
					UDP_TX_DATA <= x"01";	-- op: BOOTREQUEST
					UDP_TX_DATA_VALID <= '1';
					UDP_TX_SOF <= '1';
				when "000000001" => 
					UDP_TX_DATA <= x"01";	-- hardware type: Ethernet
					UDP_TX_SOF <= '0';
				when "000000010" => 
					UDP_TX_DATA <= x"06";	-- hardware address length
				when "000000100" => 
					UDP_TX_DATA <= XID(31 downto 24);	-- XID
				when "000000101" => 
					UDP_TX_DATA <= XID(23 downto 16);	-- XID
				when "000000110" => 
					UDP_TX_DATA <= XID(15 downto 8);	-- XID
				when "000000111" => 
					UDP_TX_DATA <= XID(7 downto 0);	-- XID
				when "000001000" => 
					UDP_TX_DATA <= TIME_CNTR_AT_DHCPDISCOVER(15 downto 8);	-- seconds elapsed since DHCP client began address acquisition
				when "000001001" => 
					UDP_TX_DATA <= TIME_CNTR_AT_DHCPDISCOVER(7 downto 0);	-- seconds elapsed since DHCP client began address acquisition
				when "000011100" => 
					UDP_TX_DATA <= MAC_ADDR(47 downto 40);	-- client MAC address
				when "000011101" => 
					UDP_TX_DATA <= MAC_ADDR(39 downto 32);	-- client MAC address
				when "000011110" => 
					UDP_TX_DATA <= MAC_ADDR(31 downto 24);	-- client MAC address
				when "000011111" => 
					UDP_TX_DATA <= MAC_ADDR(23 downto 16);	-- client MAC address
				when "000100000" => 
					UDP_TX_DATA <= MAC_ADDR(15 downto 8);	-- client MAC address
				when "000100001" => 
					UDP_TX_DATA <= MAC_ADDR(7 downto 0);	-- client MAC address
				when "011101100" => 
					UDP_TX_DATA <= MAGIC_COOKIE(31 downto 24);	-- magic cookie
				when "011101101" => 
					UDP_TX_DATA <= MAGIC_COOKIE(23 downto 16);	-- magic cookie
				when "011101110" => 
					UDP_TX_DATA <= MAGIC_COOKIE(15 downto 8);	-- magic cookie
				when "011101111" => 
					UDP_TX_DATA <= MAGIC_COOKIE(7 downto 0);	-- magic cookie
				when "011110000" => 
					UDP_TX_DATA <= x"35";	-- option DHCP message type (53)
				when "011110001" => 
					UDP_TX_DATA <= x"01";	-- length
				when "011110010" => 
					UDP_TX_DATA <= x"01";	-- DHCPDISCOVER
				when "011110011" => 
					UDP_TX_DATA <= x"3D";	-- option DHCP client identifier (61)
				when "011110100" => 
					UDP_TX_DATA <= x"07";	-- length
				when "011110101" => 
					UDP_TX_DATA <= x"01";	-- Ethernet
				when "011110110" => 
					UDP_TX_DATA <= MAC_ADDR(47 downto 40);	-- client MAC address
				when "011110111" => 
					UDP_TX_DATA <= MAC_ADDR(39 downto 32);	-- client MAC address
				when "011111000" => 
					UDP_TX_DATA <= MAC_ADDR(31 downto 24);	-- client MAC address
				when "011111001" => 
					UDP_TX_DATA <= MAC_ADDR(23 downto 16);	-- client MAC address
				when "011111010" => 
					UDP_TX_DATA <= MAC_ADDR(15 downto 8);	-- client MAC address
				when "011111011" => 
					UDP_TX_DATA <= MAC_ADDR(7 downto 0);	-- client MAC address
				when "011111100" => 
					UDP_TX_DATA <= x"37";	-- option parameter request list (55)
				when "011111101" => 
					UDP_TX_DATA <= x"03";	-- length
				when "011111110" => 
					UDP_TX_DATA <= x"01";	-- subnet mask
				when "011111111" => 
					UDP_TX_DATA <= x"03";	-- router
				when "100000000" => 
					UDP_TX_DATA <= x"06";	-- domain name server
				when "100000001" => 
					UDP_TX_DATA <= x"FF";	-- option end (255)
					UDP_TX_EOF <= '1';
				when "100000010" => 
					UDP_TX_DATA_VALID <= '0';
					UDP_TX_EOF <= '0';
				when others => 
					UDP_TX_DATA <= (others => '0');
			end case;
		elsif(STATE = 7) then
			-- DHCPREQUEST message
			-- UDP destination IP address, broadcast 
			DEST_IPv4_ADDR <= x"FFFFFFFF";
			DEST_MAC_ADDR <= x"FFFFFFFFFFFF";
			case WPTR is
				when "000000000" => 
					UDP_TX_DATA <= x"01";	-- op: BOOTREQUEST
					UDP_TX_DATA_VALID <= '1';
					UDP_TX_SOF <= '1';
				when "000000001" => 
					UDP_TX_DATA <= x"01";	-- hardware type: Ethernet
					UDP_TX_SOF <= '0';
				when "000000010" => 
					UDP_TX_DATA <= x"06";	-- hardware address length
				when "000000100" => 
					UDP_TX_DATA <= XID(31 downto 24);	-- XID
				when "000000101" => 
					UDP_TX_DATA <= XID(23 downto 16);	-- XID
				when "000000110" => 
					UDP_TX_DATA <= XID(15 downto 8);	-- XID
				when "000000111" => 
					UDP_TX_DATA <= XID(7 downto 0);	-- XID
				when "000001000" => 
					UDP_TX_DATA <= TIME_CNTR_AT_DHCPDISCOVER(15 downto 8);	-- MUST be same as in DHCPDISCOVER
				when "000001001" => 
					UDP_TX_DATA <= TIME_CNTR_AT_DHCPDISCOVER(7 downto 0);	
				when "000011100" => 
					UDP_TX_DATA <= MAC_ADDR(47 downto 40);	-- client MAC address
				when "000011101" => 
					UDP_TX_DATA <= MAC_ADDR(39 downto 32);	-- client MAC address
				when "000011110" => 
					UDP_TX_DATA <= MAC_ADDR(31 downto 24);	-- client MAC address
				when "000011111" => 
					UDP_TX_DATA <= MAC_ADDR(23 downto 16);	-- client MAC address
				when "000100000" => 
					UDP_TX_DATA <= MAC_ADDR(15 downto 8);	-- client MAC address
				when "000100001" => 
					UDP_TX_DATA <= MAC_ADDR(7 downto 0);	-- client MAC address
				when "011101100" => 
					UDP_TX_DATA <= MAGIC_COOKIE(31 downto 24);	-- magic cookie
				when "011101101" => 
					UDP_TX_DATA <= MAGIC_COOKIE(23 downto 16);	-- magic cookie
				when "011101110" => 
					UDP_TX_DATA <= MAGIC_COOKIE(15 downto 8);	-- magic cookie
				when "011101111" => 
					UDP_TX_DATA <= MAGIC_COOKIE(7 downto 0);	-- magic cookie
				when "011110000" => 
					UDP_TX_DATA <= x"35";	-- option DHCP message type (53)
				when "011110001" => 
					UDP_TX_DATA <= x"01";	-- length
				when "011110010" => 
					UDP_TX_DATA <= x"03";	-- DHCPREQUEST
				when "011110011" => 
					UDP_TX_DATA <= x"3D";	-- option DHCP client identifier (61)
				when "011110100" => 
					UDP_TX_DATA <= x"07";	-- length
				when "011110101" => 
					UDP_TX_DATA <= x"01";	-- Ethernet
				when "011110110" => 
					UDP_TX_DATA <= MAC_ADDR(47 downto 40);	-- client MAC address
				when "011110111" => 
					UDP_TX_DATA <= MAC_ADDR(39 downto 32);	-- client MAC address
				when "011111000" => 
					UDP_TX_DATA <= MAC_ADDR(31 downto 24);	-- client MAC address
				when "011111001" => 
					UDP_TX_DATA <= MAC_ADDR(23 downto 16);	-- client MAC address
				when "011111010" => 
					UDP_TX_DATA <= MAC_ADDR(15 downto 8);	-- client MAC address
				when "011111011" => 
					UDP_TX_DATA <= MAC_ADDR(7 downto 0);	-- client MAC address
				when "011111100" => 
					UDP_TX_DATA <= x"32";	-- option requested IP address (50)
				when "011111101" => 
					UDP_TX_DATA <= x"04";	-- length
				when "011111110" => 
					UDP_TX_DATA <= BEST_RX_YIADDR(31 downto 24);	-- requested IP address
				when "011111111" => 
					UDP_TX_DATA <= BEST_RX_YIADDR(23 downto 16);	-- requested IP address
				when "100000000" => 
					UDP_TX_DATA <= BEST_RX_YIADDR(15 downto 8);	-- requested IP address
				when "100000001" => 
					UDP_TX_DATA <= BEST_RX_YIADDR(7 downto 0);	-- requested IP address
				when "100000010" => 
					UDP_TX_DATA <= x"36";	-- option DHCP server identifier (54)
				when "100000011" => 
					UDP_TX_DATA <= x"04";	-- length
				when "100000100" => 
					UDP_TX_DATA <= BEST_DHCP_SERVER_IP_ADDR(31 downto 24);	-- DHCP server ID
				when "100000101" => 
					UDP_TX_DATA <= BEST_DHCP_SERVER_IP_ADDR(23 downto 16);	-- DHCP server ID
				when "100000110" => 
					UDP_TX_DATA <= BEST_DHCP_SERVER_IP_ADDR(15 downto 8);	-- DHCP server ID
				when "100000111" => 
					UDP_TX_DATA <= BEST_DHCP_SERVER_IP_ADDR(7 downto 0);	-- DHCP server ID
				when "100001000" => 
					UDP_TX_DATA <= x"FF";	-- option end (255)
					UDP_TX_EOF <= '1';
				when "100001001" => 
					UDP_TX_DATA_VALID <= '0';
					UDP_TX_EOF <= '0';
				when others => 
					UDP_TX_DATA <= (others => '0');
			end case;
		end if;
	end if;
end process;


	UDP_TX_001: UDP_TX 
	GENERIC MAP(
		NBUFS => 1,
		IPv6_ENABLED => '0'
	)
	PORT MAP(
		CLK => CLK,
		SYNC_RESET => SYNC_RESET_local,
		TICK_4US => TICK_4US,
		-- Application interface
		APP_DATA => UDP_TX_DATA,
		APP_DATA_VALID => UDP_TX_DATA_VALID,
		APP_SOF => UDP_TX_SOF,
		APP_EOF => UDP_TX_EOF,
		APP_CTS => UDP_TX_CTS,
		ACK => UDP_TX_ACK_local,
		NAK => UDP_TX_NAK_local,
		DEST_IP_ADDR => x"000000000000000000000000" & DEST_IPv4_ADDR,	
		DEST_PORT_NO => x"0043",	-- DHCP server port (67)
		SOURCE_PORT_NO => x"0044",	-- DHCP client port (68)
		IPv4_6n => '1',
		-- Configuration
		MAC_ADDR => MAC_ADDR,
		IPv4_ADDR => IPv4_ADDR_local,
		IPv6_ADDR => (others => '0'),
		IP_ID => IP_ID_IN,
		-- Routing
		RT_IP_ADDR => open,
		RT_REQ_RTS => open,
		RT_REQ_CTS => '1',
		RT_MAC_REPLY => DEST_MAC_ADDR,	
		RT_MAC_RDY => '1',
		RT_NAK => '0',
		-- MAC interface
		MAC_TX_DATA => MAC_TX_DATA,
		MAC_TX_DATA_VALID => MAC_TX_DATA_VALID,
		MAC_TX_EOF => MAC_TX_EOF_local,
		MAC_TX_CTS => MAC_TX_CTS,
		RTS => RTS,
		TP => open
	);
MAC_TX_EOF <= MAC_TX_EOF_local;


--// TEST POINTS -----------------------------
TP(1) <= DHCP_RX_DATA_VALID;
TP(2) <= EVENT1;
TP(3) <= EVENT2;
--TP(4) <= 
--TP(5) <= 
--TP(6) <= 
TP(7) <= UDP_TX_CTS; 
TP(8) <= '1' when (STATE = 3) and (UDP_TX_CTS = '1')  else '0';
TP(9) <= MAC_TX_EOF_local;

end Behavioral;
