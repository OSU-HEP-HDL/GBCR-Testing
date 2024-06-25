-------------------------------------------------------------
-- MSS copyright 2011-2014
--	Filename:  TCP_RXBUFNDEMUX.VHD
-- Author: Alain Zarembowitch / MSS
--	Version: 4
--	Date last modified: 1/31/14 AZ
-- Inheritance: 	n/a
--
-- description:  This component has three objectives:
-- (1) tentatively hold a received TCP frame on the fly until its validity is confirmed at the end of frame.
-- Discard if invalid or further process if valid.
-- (2) demultiplex multiple TCP streams, based on the destination port number
-- (3) handle dual clock domains: CLK1 for LAN side, CLK2 for user side
--
-- Because of the TCP protocol, data can only be validated at the end of a packet.
-- So the buffer management has to be able to backtrack, discard previous data and 
-- reposition pointer. 
--
-- The overall buffer size (which affects overall throughput) is user selected in the generic section.
-- This component is written of a single TCP stream.
--
-- The two clock domains (CLK1 on the TCP protocol side and CLK2 on the application side) could be 
-- combined into one clock domain at the time of instantiation: just use the same CLK for both inputs.
-- 
-- This component is written for NTCPSTREAMS TCP tx streams. Adjust as needed in the com5401pkg package.
-- 
-- Main limitations are: 
-- [1] common buffer for all streams. No individual per-stream buffering. Therefore, the 
-- flow-control mechanism (RTS/CTS) affects ALL streams.
-- [2] no support for TCP retransmission. All data is assumed to be received in sequence without gaps.
--
-- Rev 2 10/27/11 AZ
-- Simplified read pointer management. Corrected bug. 
--
-- Rev 3 1/28/14 AZ
-- Encapsulated block RAM for easier porting to other FPGA types.
-- Reduced delay in reporting free space
-- Prevent WPTR from overtaking RPTR (for example while receiving a frame which will be ultimately deemed invalid at the EOF)
-- Simulation variables initialization
-- 
-- Rev 4 1/31/14 AZ
-- Updated sensitivity lists.
---------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.com5402pkg.all;	-- defines global types, number of TCP streams, etc

entity TCP_RXBUFNDEMUX is
	generic (
		NBUFS: integer := 1
			-- number of 16Kb dual-port RAM buffers instantiated within.
			-- Trade-off buffer depth and overall TCP throughput.
			-- Valid values: 1,2,4,8
		
	);
    Port ( 
		--// CLK, RESET
		ASYNC_RESET: in std_logic;
		CLK1: in std_logic;		-- synchronous clock, TCP protocol side	
		CLK2: in std_logic;		-- synchronous clock, application side
			-- Must be global clocks. No BUFG instantiation within this component.

		--// TCP RX protocol -> RX BUFFER 
		-- synchronous with CLK1
		RX_DATA: in std_logic_vector(7 downto 0);
			-- TCP payload data field when RX_DATA_VALID = '1'
		RX_DATA_VALID: in std_logic;
			-- delineates the TCP payload data field
		RX_SOF: in std_logic;
			-- 1st byte of RX_DATA
			-- Read ancillary information at this time:
			-- (a) destination RX_STREAM_NO (based on the destination TCP port)
			-- (b) start index RX_WPTR_START
			-- (c) data length RX_LENGTH
		RX_STREAM_NO: in integer range 0 to (NTCPSTREAMS-1);
			-- output port based on the destination TCP port
			-- maximum range 0 - 255
		RX_WPTR_START: in std_logic_vector(15 downto 0);
			-- start index. Read when RX_SOF = '1'.
		RX_LENGTH: in std_logic_vector(15 downto 0);
			-- tcp data length, expressed in bytes. Read when RX_SOF = '1'.
		RX_EOF: in std_logic;
			-- 1 CLK pulse indicating that RX_DATA is the last byte in the TCP data field.
			-- ALWAYS CHECK RX_DATA_VALID at the end of packet (RX_EOF = '1') to confirm
			-- that the TCP packet is valid. 
			-- Note: All packet information stored is tentative until
			-- the entire frame is confirmed (RX_EOF = '1') and (RX_DATA_VALID = '1').
			-- MSbs are dropped.
			-- If the frame is invalid, the data and ancillary information just received is discarded.
			-- Reason: we only knows about bad TCP packets at the end.
		RX_FREE_SPACE: out std_logic_vector(15 downto 0) := (others => '0');
			-- buffer available space, expressed in bytes. 
			-- Beware of delay (as data may be in transit and information is slightly old).
		
		--// RX BUFFER -> APPLICATION INTERFACE
		-- synchronous with CLK2
		-- NTCPSTREAMS can operate independently. Only one stream active at any given time.
		-- Data is pushed out. Limited flow-control here. Receipient must be able to accept data
		-- at any time (in other words, it is the receipient's responsibility to have elastic 
		-- buffer if needed).
		RX_APP_DATA: out SLV8xNTCPSTREAMStype;
		RX_APP_DATA_VALID: out std_logic_vector((NTCPSTREAMS-1) downto 0);
		RX_APP_RTS: out std_logic;
		RX_APP_CTS: in std_logic;
			-- Optional Clear-To-Send. pull to '1' when output flow control is unused.
			-- WARNING: pulling CTS down will stop the flow for ALL streams.

		TP: out std_logic_vector(10 downto 1)

			);
end entity;

architecture Behavioral of TCP_RXBUFNDEMUX is
--------------------------------------------------------
--      COMPONENTS
--------------------------------------------------------
	COMPONENT BRAM_DP
	GENERIC(
		DATA_WIDTHA: integer;
		ADDR_WIDTHA: integer;
		DATA_WIDTHB: integer;
		ADDR_WIDTHB: integer
	);
	PORT(
	    CLKA   : in  std_logic;
	    WEA    : in  std_logic;
	    ADDRA  : in  std_logic_vector(ADDR_WIDTHA-1 downto 0);
	    DIA   : in  std_logic_vector(DATA_WIDTHA-1 downto 0);
	    DOA  : out std_logic_vector(DATA_WIDTHA-1 downto 0);
	    CLKB   : in  std_logic;
	    WEB    : in  std_logic;
	    ADDRB  : in  std_logic_vector(ADDR_WIDTHB-1 downto 0);
	    DIB   : in  std_logic_vector(DATA_WIDTHB-1 downto 0);
	    DOB  : out std_logic_vector(DATA_WIDTHB-1 downto 0)
		);
	END COMPONENT;
--------------------------------------------------------
--     SIGNALS
--------------------------------------------------------
-- freeze ancilliary input data at the SOF
signal RX_WPTR_START_D: std_logic_vector(15 downto 0) := (others => '0');
signal RX_LENGTH_D: std_logic_vector(15 downto 0) := (others => '0');

-- delay rx data stream so that we can insert 5 bytes of ancillary information before the data frame.
signal RX_DATA_D: std_logic_vector(7 downto 0) := (others => '0');
signal RX_DATA_D2: std_logic_vector(7 downto 0) := (others => '0');
signal RX_DATA_D3: std_logic_vector(7 downto 0) := (others => '0');
signal RX_DATA_D4: std_logic_vector(7 downto 0) := (others => '0');
signal RX_DATA_D5: std_logic_vector(7 downto 0) := (others => '0');
signal RX_DATA_VALID_D: std_logic := '0';
signal RX_DATA_VALID_D2: std_logic := '0';
signal RX_DATA_VALID_D3: std_logic := '0';
signal RX_DATA_VALID_D4: std_logic := '0';
signal RX_DATA_VALID_D5: std_logic := '0';
signal RX_SOF_D: std_logic := '0';
signal RX_SOF_D2: std_logic := '0';
signal RX_SOF_D3: std_logic := '0';
signal RX_SOF_D4: std_logic := '0';
signal RX_SOF_D5: std_logic := '0';
signal RX_EOF_D: std_logic := '0';
signal RX_EOF_D2: std_logic := '0';
signal RX_EOF_D3: std_logic := '0';
signal RX_EOF_D4: std_logic := '0';
signal RX_EOF_D5: std_logic := '0';
signal RX_EOF_D6: std_logic := '0';
signal PTR_MASK: std_logic_vector(13 downto 0) := (others => '1');
signal WPTR: std_logic_vector(13 downto 0) := (others => '0');
signal WPTR_CONFIRMED: std_logic_vector(13 downto 0)  := (others => '0');
signal WPTR_CONFIRMED_D: std_logic_vector(13 downto 0) := (others => '0');
signal WPTR_CONFIRMED_D2: std_logic_vector(13 downto 0) := (others => '0');
signal WPTR_MEMINDEX: std_logic_vector(2 downto 0) := "000";
signal WEA0: std_logic := '0';
signal WEA: std_logic_vector((NBUFS-1) downto 0) := (others => '0');
signal OVERFLOW_ERROR: std_logic := '0';
signal DIA: std_logic_vector(8 downto 0) := (others => '0');
type DOBtype is array ((NBUFS-1) downto 0) of std_logic_vector(8 downto 0);
signal DOB: DOBtype := (others => (others => '0'));
signal RPTR: std_logic_vector(13 downto 0) := (others => '1');
signal RPTR_D: std_logic_vector(13 downto 0) := (others => '1');
signal RPTR_D2: std_logic_vector(13 downto 0) := (others => '1');
signal RPTR_D3: std_logic_vector(13 downto 0) := (others => '1');
signal RPTR_INC: std_logic_vector(13 downto 0) := (others => '0');
signal RPTR_MEMINDEX_E: std_logic_vector(2 downto 0) := "000";
signal RPTR_MEMINDEX: std_logic_vector(2 downto 0) := "000";
signal SAMPLE2_CLK: std_logic := '0';
signal SAMPLE2_CLK_E: std_logic := '0';
signal SOF2: std_logic := '0';
signal SOF2_D: std_logic := '0';
signal SOF2_D2: std_logic := '0';
signal SOF2_D3: std_logic := '0';
signal SOF2_D4: std_logic := '0';
signal DATA2: std_logic_vector(7 downto 0) := x"00";
signal RX_STREAM_NO2: integer range 0 to (NTCPSTREAMS-1) := 0;
signal RX_WPTR_START2: std_logic_vector(15 downto 0) := (others => '0');
signal RX_LENGTH2: std_logic_vector(15 downto 0) := (others => '0');
signal WPTR_CONFIRMED_STABLE: std_logic := '0';
signal WPTR_CONFIRMED_STABLE_D: std_logic := '0';
signal BUF_SIZE: std_logic_vector(13 downto 0) := (others => '0');
signal BUF_SIZE_D: std_logic_vector(13 downto 0) := (others => '0');
signal BUF_SIZE_D2: std_logic_vector(13 downto 0) := (others => '0');
signal RPTR_STABLE: std_logic := '0';
signal RPTR_STABLE_D: std_logic := '0';
signal COUNTER8: std_logic_vector(2 downto 0) := "000";
signal RX_FREE_SPACE_local: std_logic_vector(13 downto 0) := (others => '0');

--------------------------------------------------------
--      IMPLEMENTATION
--------------------------------------------------------
begin

-- delay rx data stream so that we can insert 5 bytes of ancillary information before the data frame.
DELAY5_001: process(CLK1)
begin
	if rising_edge(CLK1) then
		RX_DATA_D <= RX_DATA;
		RX_DATA_D2 <= RX_DATA_D;
		RX_DATA_D3 <= RX_DATA_D2;
		RX_DATA_D4 <= RX_DATA_D3;
		RX_DATA_D5 <= RX_DATA_D4;
		RX_DATA_VALID_D <= RX_DATA_VALID;
		RX_DATA_VALID_D2 <= RX_DATA_VALID_D;
		RX_DATA_VALID_D3 <= RX_DATA_VALID_D2;
		RX_DATA_VALID_D4 <= RX_DATA_VALID_D3;
		RX_DATA_VALID_D5 <= RX_DATA_VALID_D4;
		RX_SOF_D <= RX_SOF;
		RX_SOF_D2 <= RX_SOF_D;
		RX_SOF_D3 <= RX_SOF_D2;
		RX_SOF_D4 <= RX_SOF_D3;
		RX_SOF_D5 <= RX_SOF_D4;
		RX_EOF_D <= RX_EOF;
		RX_EOF_D2 <= RX_EOF_D;
		RX_EOF_D3 <= RX_EOF_D2;
		RX_EOF_D4 <= RX_EOF_D3;
		RX_EOF_D5 <= RX_EOF_D4;
		RX_EOF_D6 <= RX_EOF_D5;
	end if;
end process;

-- freeze ancilliary data at the SOF
FREEZE_INPUT: process(CLK1) 
begin
	if rising_edge(CLK1) then
		if(RX_SOF = '1') then
			RX_WPTR_START_D <= RX_WPTR_START;
			RX_LENGTH_D <= RX_LENGTH;
		end if;
	end if;
end process;

--Insert
-- (a) destination RX_STREAM_NO (based on the destination TCP port)
-- (b) start index RX_WPTR_START
-- (c) data length RX_LENGTH
INSERT_ANCILLARY_001: process(RX_SOF, RX_SOF_D, RX_SOF_D2, RX_SOF_D3, RX_SOF_D4, RX_STREAM_NO, 
										RX_DATA_D5, RX_DATA_VALID_D5, RX_WPTR_START_D, RX_LENGTH_D)
begin
	if(RX_SOF = '1') then
		DIA(7 downto 0) <= conv_std_logic_vector(RX_STREAM_NO, 8);
		WEA0 <= '1';
	elsif(RX_SOF_D = '1') then
		DIA(7 downto 0) <= RX_WPTR_START_D(7 downto 0);
		WEA0 <= '1';
	elsif(RX_SOF_D2 = '1') then
		DIA(7 downto 0) <= RX_WPTR_START_D(15 downto 8);
		WEA0 <= '1';
	elsif(RX_SOF_D3 = '1') then
		DIA(7 downto 0) <= RX_LENGTH_D(7 downto 0);
		WEA0 <= '1';
	elsif(RX_SOF_D4 = '1') then
		DIA(7 downto 0) <= RX_LENGTH_D(15 downto 8);
		WEA0 <= '1';
	else
		DIA(7 downto 0) <= RX_DATA_D5;
		WEA0 <= RX_DATA_VALID_D5;
	end if;
end process;

DIA(8) <= RX_SOF;

-- write pointer management 
WPTR_GEN_001: process(ASYNC_RESET, CLK1)
begin
	if (ASYNC_RESET = '1') then
		WPTR <= (others => '0');
		WPTR_CONFIRMED <= (others => '0');
	elsif rising_edge(CLK1) then
		if(RX_EOF_D5 = '1') and (RX_DATA_VALID_D5 = '0') then
			-- bad frame. rewind to last confirmed WPTR
			WPTR <= WPTR_CONFIRMED and PTR_MASK;
		elsif(WEA0 = '1') and (RX_FREE_SPACE_local = 0) then
			-- prevent wptr from overtaking rptr. Should never happen.. defensive code
			-- Could happen if we accidentally receive a very large frame which ultimately is deemed invalid.
		elsif(RX_EOF_D5 = '1') and (RX_DATA_VALID_D5 = '1') then
			-- valid frame. write one last byte and save confirmed WPTR
			WPTR_CONFIRMED <= (WPTR + 1) and PTR_MASK;
			WPTR <= (WPTR + 1) and PTR_MASK;
		elsif(WEA0 = '1') then
			-- writing tentative data
			WPTR <= (WPTR + 1) and PTR_MASK;
		end if;
	end if;
end process;
WPTR_CONFIRMED_STABLE <= not(RX_EOF_D5 or RX_EOF_D6);
	-- avoid resampling WPTR_CONFIRMED near the transition
	-- this is to prevent glitches when resampling WPTR_CONFIRMED with CLK2.
OVERFLOW_ERROR <= '1' when (WEA0 = '1') and (RX_FREE_SPACE_local = 0) else '0';
	
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
WEA_GEN: process(WPTR_MEMINDEX, WEA0)
begin
	for I in 0 to (NBUFS -1) loop
		if(WPTR_MEMINDEX = I) then	-- range 0 through 7
			WEA(I) <= WEA0;
		else
			WEA(I) <= '0';
		end if;
	end loop;
end process;


-- 1,2,4, or 8 RAM blocks.
RAMB_16_S9_S9_X: for I in 0 to (NBUFS-1) generate
	-- 18Kbit buffer(s) 
	RAMB16_S9_S9_001: BRAM_DP 
	GENERIC MAP(
		DATA_WIDTHA => 9,		
		ADDR_WIDTHA => 11,
		DATA_WIDTHB => 9,		 
		ADDR_WIDTHB => 11

	)
	PORT MAP(
		CLKA => CLK1,
		WEA => WEA(I),      -- Port A Write Enable Input
		ADDRA => WPTR(10 downto 0),  -- Port A 11-bit Address Input
		DIA => DIA,      -- Port A 9-bit Data Input
		DOA => open,
		CLKB => CLK2,
		WEB => '0',
		ADDRB => RPTR(10 downto 0),  -- Port B 11-bit Address Input
		DIB => "000000000",      -- Port B 9-bit Data Input
		DOB => DOB(I)      -- Port B 9-bit Data Output
	);
end generate;

-- resample WPTR_CONFIRMED with CLK2
RECLOCK2_001: process(CLK2, WPTR_CONFIRMED_STABLE, WPTR_CONFIRMED)
begin
	if rising_edge(CLK2) then
		WPTR_CONFIRMED_D <= WPTR_CONFIRMED;
		WPTR_CONFIRMED_STABLE_D <= WPTR_CONFIRMED_STABLE;

		if(WPTR_CONFIRMED_STABLE_D = '0') then
			WPTR_CONFIRMED_D2 <= WPTR_CONFIRMED_D;
		end if;
	end if;
end process;

--// read pointer managment
BUF_SIZE <= (WPTR_CONFIRMED_D2 + not(RPTR)) and PTR_MASK;

-- read pointer management
RPTR_INC <= (RPTR + 1) and PTR_MASK;

RPTR_GEN_001: process(ASYNC_RESET, CLK2)
begin
	if (ASYNC_RESET = '1') then
		RPTR <= PTR_MASK;		-- new 1/25/14
		SAMPLE2_CLK_E <= '0';
	elsif rising_edge(CLK2) then
		-- 1 CLK2 delay to read data from RAMB
		RPTR_MEMINDEX <= RPTR_MEMINDEX_E;
		SAMPLE2_CLK <= SAMPLE2_CLK_E;	
		
		if(BUF_SIZE /= 0) and (RX_APP_CTS = '1') then	
			-- data waiting to be read. App sends "clear to send"
			RPTR <= RPTR_INC;
			SAMPLE2_CLK_E <= '1';
		else
			-- nothing to read
			SAMPLE2_CLK_E <= '0';
		end if;
	end if;
end process;

RX_APP_RTS <= '1' when (BUF_SIZE /= 0) else '0';
	
-- Mask upper address bits, depending on the memory depth (1,2,4, or 8 RAMblocks)
RPTR_MEMINDEX_E <= RPTR(13 downto 11) when (NBUFS = 8) else
				"0" & RPTR(12 downto 11) when (NBUFS = 4) else
				"00" & RPTR(11 downto 11) when (NBUFS = 2) else
				"000"; -- when  (NBUFS = 1) 

-- select RAMBlock for data output
SOF2 <= DOB(conv_integer(RPTR_MEMINDEX))(8);
DATA2 <= DOB(conv_integer(RPTR_MEMINDEX))(7 downto 0);

-- demux ancillary data at the buffer's output
-- inverse of the INSERT_ANCILLARY_001 process
DEMUX_ANCILLARY_001: process(CLK2)
begin
	if rising_edge(CLK2) then
		if(SAMPLE2_CLK = '1') then 
			SOF2_D <= SOF2;
			SOF2_D2 <= SOF2_D;
			SOF2_D3 <= SOF2_D2;
			SOF2_D4 <= SOF2_D3;
		
			if(SOF2 = '1') then
				-- SOF detected at the buffer's output
				RX_STREAM_NO2 <= conv_integer(DATA2);
			end if;
			if(SOF2_D = '1') then
				RX_WPTR_START2(7 downto 0) <= DATA2;
			end if;
			if(SOF2_D2 = '1') then
				RX_WPTR_START2(15 downto 8) <= DATA2;
			end if;
			if(SOF2_D3 = '1') then
				RX_LENGTH2(7 downto 0) <= DATA2;
			end if;
			if(SOF2_D4 = '1') then
				RX_LENGTH2(15 downto 8) <= DATA2;
			end if;
			
			if(SOF2 = '0') and (SOF2_D = '0') and (SOF2_D2 = '0')  and (SOF2_D3 = '0')  and (SOF2_D4 = '0') then
				for I in 0 to (NTCPSTREAMS - 1) loop
					if(I = RX_STREAM_NO2) then
						RX_APP_DATA(I) <= DATA2;	-- look-ahead 
						RX_APP_DATA_VALID(I) <= SAMPLE2_CLK;
					else
						RX_APP_DATA_VALID(I) <= '0';
					end if;
				end loop;
			else
				RX_APP_DATA_VALID <= (others => '0');
			end if;
		else
			RX_APP_DATA_VALID <= (others => '0');
		end if;
	end if;
end process;

	
-- save RPTR once every 8 CLK2
RPTR_GEN_002: process(CLK2)
begin
	if rising_edge(CLK2) then
		COUNTER8 <= COUNTER8 + 1;
		
		if(COUNTER8 = 6) then
			RPTR_D <= RPTR;
		end if;
		
		if(COUNTER8 < 6) then
			RPTR_STABLE <= '1';
		else
			RPTR_STABLE <= '0';
		end if;
	end if;
end process;
	
-- reclock RPTR with CLK1 while stable
FREE_SPACE_GEN_001: process(CLK1, RPTR_STABLE, RPTR_D) 
begin
	if rising_edge(CLK1) then
		-- reclock RPTR with CLK1 while stable
		RPTR_STABLE_D <= RPTR_STABLE;
		RPTR_D2 <= RPTR_D;
		
		if(RPTR_STABLE_D = '1') then
			RPTR_D3 <= RPTR_D2;
		end if;
	end if;
end process;

-- compute available space
-- Mask upper size bits, depending on the memory depth (1,2,4, or 8 RAMblocks)
RX_FREE_SPACE_local <= (RPTR_D3 - WPTR) and PTR_MASK;

REPORT_FREE_SPACE_001: process(CLK1) 
begin
	if rising_edge(CLK1) then
		-- Add a 16 byte margin because each frame stored in RAMB requires a 5 byte overhead
		if(RX_FREE_SPACE_local >= 16) then
			RX_FREE_SPACE(15 downto 14) <= "00";
			RX_FREE_SPACE(13 downto 0) <= RX_FREE_SPACE_local -16;
		else
			RX_FREE_SPACE <= (others => '0');
		end if;
	end if;
end process;


end Behavioral;
