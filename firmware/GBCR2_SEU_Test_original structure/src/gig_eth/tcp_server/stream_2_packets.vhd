-------------------------------------------------------------
-- MSS copyright 2011
--	Filename:  STREAM_2_PACKETS.VHD
-- Author: Alain Zarembowitch / MSS
--	Version: 1
--	Date last modified: 8/13/11
-- Inheritance: 	n/a
--
-- description: Send a stream in the form of packets.
-- The input stream is segmented into data packets. The packet transmission
-- is triggered when one of two events occur:
-- (a) full packet: the number of bytes waiting for transmission is greater or equal than 
-- the maximum packet size (see constant MAX_PACKET_SIZE within), or
-- (b) no-new-input timeout: there are a few bytes waiting for transmission but no new input 
-- bytes were received in the last 200us (or adjust constant TX_IDLE_TIMEOUT within).
-- 
-- If the follow-on transmission component is unable to immediately send the packet 
-- (for example if UDP_TX is missing routing information) it will return a negative acknowledgement (NAK). 
-- This component is responsible for triggering a re-transmission at a later time.
-- The wait before the next retransmission attempt is defined by the constant TX_RETRY_TIMEOUT within.
--
-- This component can interface seemlessly with PRBS11P.vhd at the input for generating
-- a high-speed pseudo-random test pattern generation (perfect for throughput and BER 
-- measurements). 
--
-- This component can interface seemlessly with USB_TX.vhd at the output to encapsulate
-- the output packets within UDP frames for network transmission. 

---------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
Library UNISIM;
use UNISIM.vcomponents.all;

entity STREAM_2_PACKETS is
	generic (
		NBUFS: integer := 1;
			-- number of 16Kb dual-port RAM buffers instantiated within.
			-- Valid values: 1,2,4,8
		SIMULATION: std_logic := '0'
	);
    Port ( 
		--// CLK, RESET
		ASYNC_RESET: in std_logic;
		CLK: in std_logic;		-- synchronous clock
			-- Must be a global clocks. No BUFG instantiation within this component.
		TICK_4US: in std_logic;

		--// INPUT STREAM
		STREAM_DATA: in std_logic_vector(7 downto 0);
		STREAM_DATA_VALID: in std_logic;
		STREAM_CTS: out std_logic; 	-- flow control
		
		--// OUTPUT PACKETS
		-- For example, interfaces with UDP_TX
		DATA_OUT: out std_logic_vector(7 downto 0);
		DATA_VALID_OUT: out std_logic;
		SOF_OUT: out std_logic;	-- also resets internal state machine
		EOF_OUT: out std_logic;
		CTS_IN: in std_logic;  -- Clear To Send = transmit flow control. 
		ACK_IN: in std_logic;
			-- previous packet is accepted for transmission. 
			-- ACK/NAK can arrive anytime after SOF_OUT, even before the packet is fully transferred 
		NAK_IN: in std_logic;
			-- could not send the packet (for example, no routing information available for the selected 
			-- LAN destination IP). Try later.
	
		--// TEST POINTS 
		TP: out std_logic_vector(10 downto 1)

			);
end entity;

architecture Behavioral of STREAM_2_PACKETS is
--------------------------------------------------------
--      COMPONENTS
--------------------------------------------------------
--------------------------------------------------------
--     SIGNALS
--------------------------------------------------------
-- Suffix _D indicates a one CLK delayed version of the net with the same name
-- Suffix _E indicates a one CLK early version of the net with the same name
-- Suffix _X indicates an extended precision version of the net with the same name
-- Suffix _N indicates an inverted version of the net with the same name

--//-- COMPONENT CONFIGURATION (FIXED AT PRE-SYNTHESIS) ---------------
constant TX_IDLE_TIMEOUT: integer range 0 to 50 := 50;	-- inactive input timeout, expressed in 4us units. -- 50*4us = 200us 
constant MAX_PACKET_SIZE: std_logic_vector(13 downto 0) := "00" & x"200";	-- in bytes. 512 bytes
--constant MAX_PACKET_SIZE: std_logic_vector(13 downto 0) := "00" & x"100";	-- in bytes. 256 bytes
--constant MAX_PACKET_SIZE: std_logic_vector(13 downto 0) := "00" & x"001";	-- 1 byte (to test small odd length)
constant TX_RETRY_TIMEOUT: integer range 0 to 1023 := 500;	
constant TX_RETRY_TIMEOUT_SIM: integer range 0 to 1023 := 10;	-- shorter timer during simulations
	-- wait time after a NAK before trying a retransmission, expressed in 4us units. -- 500*4us = 2ms 
	-- IMPORTANT: the timeout starts at the SOF. It therefore includes the output data transfer duration  (MAX_PACKET_SIZE/fCLK).
	-- Always make sure the timeout is always greater than the output data transfer duration.


--//-- INPUT IDLE DETECTION ---------------------------
signal TX_IDLE_TIMER: integer range 0 to 50 := TX_IDLE_TIMEOUT;
signal TX_IDLE: std_logic := '0';

--//-- INPUT ELASTIC BUFFER ---------------------------

signal PTR_MASK: std_logic_vector(13 downto 0) := (others => '1');
signal WPTR: std_logic_vector(13 downto 0) := (others => '0');
signal RPTR: std_logic_vector(13 downto 0) := (others => '1');
signal RPTR_INC: std_logic_vector(13 downto 0) := (others => '0');
signal RPTR_D: std_logic_vector(13 downto 0) := (others => '1');
signal RPTR_ACKED: std_logic_vector(13 downto 0) := (others => '1');
signal BUF_SIZE: std_logic_vector(13 downto 0) := (others => '0');
signal WEA: std_logic_vector((NBUFS-1) downto 0) := (others => '0');
signal WPTR_MEMINDEX: std_logic_vector(2 downto 0) := (others => '0');
signal RPTR_MEMINDEX_E: std_logic_vector(2 downto 0) := (others => '0');
signal RPTR_MEMINDEX: std_logic_vector(2 downto 0) := (others => '0');
type DOBtype is array(integer range 0 to (NBUFS-1)) of std_logic_vector(7 downto 0);
signal DOB: DOBtype := (others => (others => '0'));

--//-- READ POINTER AND STATE MACHINE ----------------------------
signal STATE: integer range 0 to 3 := 0;
signal RPTR_MAX: std_logic_vector(13 downto 0) := (others => '0');
signal DATA_VALID_E: std_logic := '0';
signal DATA_VALID: std_logic := '0';
signal SOF_E: std_logic := '0';
signal SOF: std_logic := '0';
signal EOF_E: std_logic := '0';
signal EOF: std_logic := '0';
signal TX_RETRY_TIMER: integer range 0 to 1023 := 0;
signal TX_RETRY_TIMEOUT_B: integer range 0 to 1023 := 0;	

signal ACK_IN_FLAG: std_logic := '0';
signal NAK_IN_FLAG: std_logic := '0';

--------------------------------------------------------
--      IMPLEMENTATION
--------------------------------------------------------
begin

-- during simulations, reduce long timer values 
TX_RETRY_TIMEOUT_B <= TX_RETRY_TIMEOUT when (SIMULATION = '0') else TX_RETRY_TIMEOUT_SIM;

--//-- INPUT IDLE DETECTION ---------------------------
-- Raise a flag when no new Tx data is received in the last 200 us. 
-- Keep track for each stream.
TX_IDLE_GEN_001: process(ASYNC_RESET, CLK)
begin
	if(ASYNC_RESET = '1') then
		TX_IDLE_TIMER <= TX_IDLE_TIMEOUT;
	elsif rising_edge(CLK) then
		if(STREAM_DATA_VALID = '1') then
			-- new transmit data, reset counter
			--TX_IDLE_TIMER <= 1;	-- TEST TEST TEST FOR SIMULATION PURPOSES ONLY
			TX_IDLE_TIMER <= TX_IDLE_TIMEOUT;	
		elsif(TICK_4US = '1') and (TX_IDLE_TIMER /= 0) then
			-- otherwise, decrement until counter reaches 0 (TX_IDLE condition)
			TX_IDLE_TIMER <= TX_IDLE_TIMER -1;
		end if;
	end if;
end process;

TX_IDLE <= '1' when (TX_IDLE_TIMER = 0) and (STREAM_DATA_VALID = '0') else '0';

--//-- INPUT ELASTIC BUFFER ---------------------------
WPTR_GEN_001: process(ASYNC_RESET, CLK)
begin
	if(ASYNC_RESET = '1') then
		WPTR <= (others => '0');
	elsif rising_edge(CLK) then
		if(STREAM_DATA_VALID = '1') then
			WPTR <= (WPTR + 1) and PTR_MASK;
		end if;
	end if;
end process;


-- Mask upper address bits, depending on the memory depth (1,2,4, or 8 RAMblocks)
WPTR_MEMINDEX <= WPTR(13 downto 11) when (NBUFS = 8) else
				"0" & WPTR(12 downto 11) when (NBUFS = 4) else
				"00" & WPTR(11 downto 11) when (NBUFS = 2) else
				"000"; -- when  (NBUFS = 1) 

PTR_MASK <= "11111111111111" when (NBUFS = 8) else
				"01111111111111" when (NBUFS = 4) else
				"00111111111111" when (NBUFS = 2) else
				"00011111111111"; -- when  (NBUFS = 1) 


-- select which RAMBlock to write to.
WEA_GEN_001: process(WPTR_MEMINDEX, STREAM_DATA_VALID)
begin
	for J in 0 to (NBUFS -1) loop
		if(WPTR_MEMINDEX = J) then	-- range 0 through 7
			WEA(J) <= STREAM_DATA_VALID;
		else
			WEA(J) <= '0';
		end if;
	end loop;
end process;

-- 1,2,4, or 8 RAM blocks.
RAMB_16_S9_S9_Y: for J in 0 to (NBUFS-1) generate
	RAMB16_S9_S9_001 : RAMB16_S9_S9
	port map (
		DOA => open,      -- Port A 8-bit Data Output
		DOB => DOB(J),      -- Port B 8-bit Data Output
		DOPA => open,    -- Port A 1-bit Parity Output
		DOPB => open,    -- Port B 1-bit Parity Output
		ADDRA => WPTR(10 downto 0),  -- Port A 11-bit Address Input
		ADDRB => RPTR(10 downto 0),  -- Port B 11-bit Address Input
		CLKA => CLK,    -- Port A Clock
		CLKB => CLK,    -- Port B Clock
		DIA => STREAM_DATA,      -- Port A 8-bit Data Input
		DIB => x"00",      -- Port B 8-bit Data Input
		DIPA => "0",    -- Port A 1-bit parity Input
		DIPB => "0",    -- Port-B 1-bit parity Input
		ENA => '1',      -- Port A RAM Enable Input
		ENB => '1',      -- PortB RAM Enable Input
		SSRA => '0',    -- Port A Synchronous Set/Reset Input
		SSRB => '0',    -- Port B Synchronous Set/Reset Input
		WEA => WEA(J),      -- Port A Write Enable Input
		WEB => '0'       -- Port B Write Enable Input
	);
end generate;

-- Mask upper address bits, depending on the memory depth (1,2,4, or 8 RAMblocks)
RPTR_MEMINDEX_E <= RPTR_D(13 downto 11) when (NBUFS = 8) else
				"0" & RPTR_D(12 downto 11) when (NBUFS = 4) else
				"00" & RPTR_D(11 downto 11) when (NBUFS = 2) else
				"000"; -- when  (NBUFS = 1) 

BUF_SIZE <= (WPTR + not (RPTR_ACKED)) and PTR_MASK;
	-- occupied space in the buffer (i.e. data waiting for transmission)

-- input flow control
STREAM_CTS <= '1' when (not BUF_SIZE(13 downto 7) /=  0) and (NBUFS = 8) else
					'1' when (not BUF_SIZE(12 downto 7) /=  0) and (NBUFS = 4) else
					'1' when (not BUF_SIZE(11 downto 7) /=  0) and (NBUFS = 2) else
					'1' when (not BUF_SIZE(10 downto 7) /=  0) and (NBUFS = 1) else
					'0';

	-- allow more tx data in if there is room for at least 128 bytes

--//-- READ POINTER AND STATE MACHINE ----------------------------
-- manage read pointer
RPTR_INC <= RPTR + 1;

RPTR_GEN_001: process(ASYNC_RESET, CLK)
begin
	if(ASYNC_RESET = '1') then
		STATE <= 0;
		RPTR <= PTR_MASK;
		RPTR_D <= PTR_MASK;
		RPTR_ACKED <= PTR_MASK;
		DATA_VALID_E <= '0';
		SOF_E <= '0';
		EOF_E <= '0';
		DATA_VALID <= '0';
		SOF <= '0';
		EOF <= '0';
	elsif rising_edge(CLK) then
		-- 1 CLK delay in reading data from block RAM
		RPTR_D <= RPTR;	
		DATA_VALID <= DATA_VALID_E;
		SOF <= SOF_E;
		EOF <= EOF_E;
		
		if(STATE = 0) and (CTS_IN = '1') and (BUF_SIZE /= 0) then
			-- idle state, destination ready for tx and data is waiting in input elastic buffer
			if(BUF_SIZE >= MAX_PACKET_SIZE) then
				-- tx trigger 2: got enough data in buffer to fill a maximum size packet
				STATE <= 1;
				RPTR_MAX <= (RPTR_ACKED + MAX_PACKET_SIZE) and PTR_MASK;
				RPTR <= RPTR_INC and PTR_MASK;	-- start transferring the first byte
				DATA_VALID_E <= '1';
				SOF_E <= '1';
				if(MAX_PACKET_SIZE = 1) then	
					-- special case: 1 byte packet. EOF = SOF
					EOF_E <= '1';
				end if;
			elsif(TX_IDLE = '1') then
				-- tx trigger 1: timeout waiting for fresh input bytes
				STATE <= 1;
				RPTR_MAX <= (WPTR - 1) and PTR_MASK;
				RPTR <= RPTR_INC and PTR_MASK;	-- start transferring the first byte
				DATA_VALID_E <= '1';
				SOF_E <= '1';
				if(BUF_SIZE = 1) then	
					-- special case: 1 byte packet. EOF = SOF
					EOF_E <= '1';
				end if;
			end if;
		elsif(STATE = 1) then
			SOF_E <= '0';
			if ((RPTR and PTR_MASK) = (RPTR_MAX and PTR_MASK)) then
				-- end of packet transmission
				DATA_VALID_E <= '0';
				EOF_E <= '0';
				STATE <= 2;				-- data transfer complete. wait for ACK or NAK
				TX_RETRY_TIMER <= TX_RETRY_TIMEOUT_B;	
					-- this timer has two objectives: 
					-- (a) make sure the state machine does not get stuck at state 2 if for some unexplained reason
					-- no ACK/NAK is received, and 
					-- (b) wait a bit before retransmitting a NAK'ed packet.
			else
				-- not yet done transferring bytes
				if(CTS_IN = '1') then
					RPTR <= RPTR_INC and PTR_MASK;	-- continue transferring bytes
					DATA_VALID_E <= '1';
					if((RPTR_INC and PTR_MASK) = (RPTR_MAX and PTR_MASK)) then
						EOF_E <= '1';
					end if;
				else
					DATA_VALID_E <= '0';
				end if;
			end if;
		elsif(STATE = 2) then
			-- data transfer complete. waiting for ACK/NAK
			if(ACK_IN = '1') or (ACK_IN_FLAG = '1') then
				-- All done. 
				STATE <= 0;				-- back to idle
				RPTR_ACKED <= RPTR and PTR_MASK;	-- new acknowledged read pointer
			elsif(NAK_IN = '1') or (NAK_IN_FLAG = '1') then
				-- no transfer. try again later 
				STATE <= 3;				-- wait a bit, then re-try
				RPTR <= RPTR_ACKED and PTR_MASK; 	-- rewind read pointer
			elsif(TX_RETRY_TIMER = 0) then
				-- timer expired without receiving an ACK/NAK (abnormal condition). go back to idle
				STATE <= 0;
				RPTR <= RPTR_ACKED and PTR_MASK; 	-- rewind read pointer
			elsif(TICK_4US = '1') then
				TX_RETRY_TIMER <= TX_RETRY_TIMER - 1;
			end if;
		elsif(STATE = 3) then
			-- wait a bit then retry sending
			if(TX_RETRY_TIMER = 0) then
				-- waited long enough. try retransmitting.
				STATE <= 0;
			elsif(TICK_4US = '1') then
				TX_RETRY_TIMER <= TX_RETRY_TIMER - 1;
			end if;
		end if;
	end if;
end process;

-- ACK/NAK received flags
ACK_NAK_FLAGS_001: process(ASYNC_RESET, CLK)
begin
	if(ASYNC_RESET = '1') then
		ACK_IN_FLAG <= '0';
		NAK_IN_FLAG <= '0';
	elsif rising_edge(CLK) then
		if(STATE = 0) then
			ACK_IN_FLAG <= '0';
		elsif(ACK_IN = '1') then
			ACK_IN_FLAG <= '1';
		end if;
		if(STATE = 0) then
			NAK_IN_FLAG <= '0';
		elsif(NAK_IN = '1') then
			NAK_IN_FLAG <= '1';
		end if;
	end if;
end process;

--//-- OUTPUT --------------------------------
DATA_OUT <= DOB(conv_integer(RPTR_MEMINDEX));
DATA_VALID_OUT <= DATA_VALID;
SOF_OUT <= SOF;
EOF_OUT <= EOF;

--//-- TEST POINTS ----------------------------
TP(1) <= '1' when (STATE = 0) else '0';
TP(2) <= '1' when (STATE = 1) else '0';
TP(3) <= '1' when (STATE = 2) else '0';
TP(4) <= '1' when (STATE = 3) else '0';
TP(5) <= RPTR(0);
TP(6) <= NAK_IN_FLAG;
TP(7) <= SOF;
TP(8) <= EOF;
TP(9) <= DATA_VALID;
TP(10) <= ACK_IN_FLAG;
end Behavioral;
