-------------------------------------------------------------
-- MSS copyright 2011
--	Filename:  PACKETS_2_STREAM.VHD
-- Author: Alain Zarembowitch / MSS
--	Version: 1
--	Date last modified: 8/19/11
-- Inheritance: 	n/a
--
-- description: Receive packets (in sequence) and reassemble a stream. 
-- The packets validity is checked upon receiving the last packet byte. Any failure
-- will cause this component to discard the invalid packet and rewind the write pointer in the
-- elastic buffer to the previous valid location.
-- No flow control on the packets side. Flow-control (see APP_CTS) on the application side.
--
-- This component can interface seemlessly with USB_RX.vhd at the input to receive
-- input packets conveyed as UDP frames over the network. 

---------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--use work.com5402pkg.all;	-- defines global types, number of TCP streams, etc
Library UNISIM;
use UNISIM.vcomponents.all;

entity PACKETS_2_STREAM is
	generic (
		NBUFS: integer := 1
			-- number of 16Kb dual-port RAM buffers instantiated within.
			-- Valid values: 1,2,4,8
	);
    Port ( 
		--// CLK, RESET
		ASYNC_RESET: in std_logic;
		CLK: in std_logic;		-- synchronous clock
			-- Must be a global clocks. No BUFG instantiation within this component.

		--// INPUT PACKETS
		-- For example, interfaces with UDP_RX
		PACKET_DATA_IN: in std_logic_vector(7 downto 0);
		PACKET_DATA_VALID_IN: in std_logic;
		PACKET_EOF_IN: in std_logic;
			-- 1 CLK pulse indicating that PACKET_DATA_IN is the last byte in the received packet.
			-- ALWAYS CHECK PACKET_DATA_VALID_IN at the end of packet (PACKET_EOF_IN = '1') to confirm
			-- that the packet is valid. Internal elastic buffer may have to backtrack to the the last
			-- valid pointer to discard an invalid packet.
			-- Reason: we only knows about bad UDP packets at the end.
		PACKET_CTS_OUT: out std_logic;  -- Clear To Send = transmit flow control. 


		--// OUTPUT STREAM
		STREAM_DATA_OUT: out std_logic_vector(7 downto 0);
		STREAM_DATA_VALID_OUT: out std_logic;
		STREAM_CTS_IN: in std_logic; 	-- flow control, clear-to-send
	
		--// TEST POINTS, MONITORING
		BAD_PACKET: out std_logic;
			-- 1 CLK wide pulse indicating a bad packet
		TP: out std_logic_vector(10 downto 1)

			);
end entity;

architecture Behavioral of PACKETS_2_STREAM is
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

--//-- ELASTIC BUFFER ---------------------------
signal WPTR: std_logic_vector(13 downto 0) := (others => '0');
signal WPTR_ACKED: std_logic_vector(13 downto 0) := (others => '0');
signal PTR_MASK: std_logic_vector(13 downto 0) := (others => '1');
signal WEA: std_logic_vector((NBUFS-1) downto 0) := (others => '0');
signal RPTR: std_logic_vector(13 downto 0) := (others => '1');
signal RPTR_D: std_logic_vector(13 downto 0) := (others => '1');
signal BUF_SIZE: std_logic_vector(13 downto 0) := (others => '0');
signal BUF_SIZE_ACKED: std_logic_vector(13 downto 0) := (others => '0');
signal WPTR_MEMINDEX: std_logic_vector(2 downto 0) := (others => '0');
signal RPTR_MEMINDEX_E: std_logic_vector(2 downto 0) := (others => '0');
signal RPTR_MEMINDEX: std_logic_vector(2 downto 0) := (others => '0');
type DOBtype is array(integer range 0 to (NBUFS-1)) of std_logic_vector(7 downto 0);
signal DOB: DOBtype := (others => (others => '0'));
signal DATA_VALID_E: std_logic := '0';
signal DATA_VALID: std_logic := '0';
--------------------------------------------------------
--      IMPLEMENTATION
--------------------------------------------------------
begin

-- report a bad input packet
BAD_PACKET <= PACKET_EOF_IN and (not PACKET_DATA_VALID_IN);

--//-- ELASTIC BUFFER ---------------------------
WPTR_GEN_001: process(ASYNC_RESET, CLK)
begin
	if(ASYNC_RESET = '1') then
		WPTR <= (others => '0');
		WPTR_ACKED <= (others => '0');
	elsif rising_edge(CLK) then
		if(PACKET_DATA_VALID_IN = '1') then
			WPTR <= (WPTR + 1) and PTR_MASK;
			if(PACKET_EOF_IN = '1') then
				-- last byte in the received packet. Packet is valid. Remember the next start of packet
				WPTR_ACKED <= (WPTR + 1) and PTR_MASK;
			end if;
		elsif(PACKET_EOF_IN = '1')then
			-- last byte in the received packet. Packet is invalid. Discard it (i.e. rewind the write pointer)
			WPTR <= WPTR_ACKED;
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
WEA_GEN_001: process(WPTR_MEMINDEX, PACKET_DATA_VALID_IN)
begin
	for J in 0 to (NBUFS -1) loop
		if(WPTR_MEMINDEX = J) then	-- range 0 through 7
			WEA(J) <= PACKET_DATA_VALID_IN;
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
		DIA => PACKET_DATA_IN,      -- Port A 8-bit Data Input
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

BUF_SIZE <= (WPTR + not (RPTR)) and PTR_MASK;
BUF_SIZE_ACKED <= (WPTR_ACKED + not (RPTR)) and PTR_MASK;
	-- occupied space in the buffer 
	-- confirmed and unconfirmed
	
-- input flow control
PACKET_CTS_OUT <= '1' when (not BUF_SIZE(13 downto 7) /=  0) and (NBUFS = 8) else
					'1' when (not BUF_SIZE(12 downto 7) /=  0) and (NBUFS = 4) else
					'1' when (not BUF_SIZE(11 downto 7) /=  0) and (NBUFS = 2) else
					'1' when (not BUF_SIZE(10 downto 7) /=  0) and (NBUFS = 1) else
					'0';

	-- allow more tx data in if there is room for at least 128 bytes

-- manage read pointer
RPTR_GEN_001: process(ASYNC_RESET, CLK)
begin
	if(ASYNC_RESET = '1') then
		RPTR <= PTR_MASK;
		RPTR_D <= PTR_MASK;
		DATA_VALID_E <= '0';
		DATA_VALID <= '0';
	elsif rising_edge(CLK) then
		-- 1 CLK delay in reading data from block RAM
		RPTR_D <= RPTR;	
		DATA_VALID <= DATA_VALID_E;
		
		if(STREAM_CTS_IN = '1') and (BUF_SIZE_ACKED /= 0) then
			RPTR <= (RPTR + 1) and PTR_MASK;
			DATA_VALID_E <= '1';
		else
			DATA_VALID_E <= '0';
		end if;
	end if;
end process;

--//-- OUTPUT --------------------------------
STREAM_DATA_OUT <= DOB(conv_integer(RPTR_MEMINDEX));
STREAM_DATA_VALID_OUT <= DATA_VALID;

--//-- TEST POINTS ----------------------------
TP(1) <= WPTR(0);
TP(2) <= RPTR(0);
TP(3) <= WPTR(10);
TP(4) <= RPTR(10);
TP(5) <= '1' when (BUF_SIZE = 0) else '0';
TP(6) <= '1' when (BUF_SIZE_ACKED = 0) else '0';
end Behavioral;
