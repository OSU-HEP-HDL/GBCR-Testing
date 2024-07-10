-------------------------------------------------------------
-- MSS copyright 2009-2012
--	Filename:  BER2.VHD
-- Author: Alain Zarembowitch / MSS
--	Version: 1
--	Date last modified: 8/16/09
-- Inheritance: 	BER.VHD
--
-- description:  
-- Higher-speed bit error rate measurement.
-- Assumes that a known 2047-bit periodic sequence is being transmitted.
-- Automatic synchronization.
-- For high-speed, the input is 8-bit parallel. No assumption is made as
-- to the alignment of the PRBS-11 2047-bit periodic sequence with byte
-- boundaries.
--
-- Minimum period: 14.082ns (Maximum Frequency: 71.013MHz
--
-- Rev1 8/16/09 AZ
-- Initialization for simulation
---------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity BER2 is
    port ( 
		--GLOBAL CLOCKS, RESET
	   CLK : in std_logic;	-- master clock for this FPGA, synchronous 
		SYNC_RESET: in std_logic;	-- synchronous reset
			-- resets the bit error counter, 

		--// Input samples
		DATA_IN: in std_logic_vector(7 downto 0);
			-- 8-bit parallel input. MSb is first.
			-- Read at rising edge of CLK when SAMPLE_CLK_IN = '1';
		SAMPLE_CLK_IN: in std_logic;
			-- one CLK-wide pulse

		--// Controls
	   CONTROL: in std_logic_vector(7 downto 0);
			-- bits 2-0: error measurement window. Expressed in bytes!
				-- 000 = 1,000 bytes
				-- 001 = 10,000 bytes
				-- 010 = 100,000 bytes
				-- 011 = 1,000,000 bytes
				-- 100 = 10,000,000 bytes
				-- 101 = 100,000,000 bytes
				-- 110 = 1,000,000,000 bytes
			-- bit 7-3: unused

		--// Outputs
		MF_DETECT: out std_logic;
			-- raw detection of the last 32-bit of PRBS-11 sequence, straight from the matched filter.
			-- may include false alarms due to the transmitted sequence including strands similar to the reference 32-bit sequence.
		MF_DETECT_CONFIRMED: out std_logic;
			-- cleaned up version of MF_DETECT. Good to use as a clean trigger.
		SYNC_LOCK: out std_logic;


		BYTE_ERROR: out std_logic;
		DATA_REPLICA: out std_logic_vector(7 downto 0);
			-- local data replica (compare with DATA_IN)
		SAMPLE_CLK_OUT: out std_logic;
		

		BER: out std_logic_vector(31 downto 0);
		BER_SAMPLE_CLK: out std_logic;	
			-- bit errors expressed in number of BITS
			-- (whereas the window is expressed in bytes)
		
		-- test point
		TP: out std_logic_vector(10 downto 1)
			
			);
end entity;

architecture behavioral of BER2 is
--------------------------------------------------------
--      COMPONENTS
--------------------------------------------------------
	COMPONENT MATCHED_FILTER4x8
	PORT(
		CLK : IN std_logic;
		SYNC_RESET : IN std_logic;
		DATA_IN : IN std_logic_vector(7 downto 0);
		SAMPLE_CLK_IN : IN std_logic;          
		REFSEQ: in std_logic_vector(31 downto 0);   
		DETECT_OUT : OUT std_logic;
		PHASE_OUT : OUT std_logic_vector(2 downto 0);
		BIT_ERRORS : OUT std_logic_vector(4 downto 0);
		INVERSION : OUT std_logic;
		SAMPLE_CLK_OUT : OUT std_logic;
		TP : OUT std_logic_vector(10 downto 1)
		);
	END COMPONENT;
	
	COMPONENT SOF_TRACK8
	PORT(
		CLK : IN std_logic;
		SYNC_RESET : IN std_logic;
		DETECT_IN : IN std_logic;
		PHASE_IN : IN std_logic_vector(2 downto 0);
		INVERSION_IN : IN std_logic;
		SAMPLE_CLK_IN : IN std_logic;
		FRAME_LENGTH : IN std_logic_vector(15 downto 0);
		SUPERFRAME_LENGTH : IN std_logic_vector(7 downto 0);          
		SAMPLE_CLK_OUT : OUT std_logic;
		SOF_OUT : OUT std_logic;
		SOSF_OUT : OUT std_logic;
		SOF_LOCK_DETECT : OUT std_logic;
		PHASE_OUT : OUT std_logic_vector(2 downto 0);
		RESET_REPLICA: out std_logic;
		DATA_ENABLE: out std_logic
		);
	END COMPONENT;

	COMPONENT PC_16
	PORT(
		A : IN std_logic_vector(15 downto 0);          
		O : OUT std_logic_vector(4 downto 0)
		);
	END COMPONENT;
	
--------------------------------------------------------
--     SIGNALS
--------------------------------------------------------
-- Suffix _D indicates a one CLK delayed version of the net with the same name
-- Suffix _E indicates an extended precision version of the net with the same name
-- Suffix _N indicates an inverted version of the net with the same name

--// MATCHED FILTER -----------------------------------
signal MF_DETECT_LOCAL: std_logic:= '0';
signal MF_PHASE: std_logic_vector(2 downto 0) := (others => '0');
signal MF_INVERSION: std_logic:= '0';
signal SAMPLE_CLK_IN_D6: std_logic:= '0';
signal DATA_IN_D: std_logic_vector(7 downto 0) := (others => '0'); 
signal DATA_IN_D2: std_logic_vector(7 downto 0) := (others => '0'); 
signal DATA_IN_D3: std_logic_vector(7 downto 0) := (others => '0'); 
signal DATA_IN_D4: std_logic_vector(7 downto 0) := (others => '0'); 
signal DATA_IN_D5: std_logic_vector(7 downto 0) := (others => '0'); 
signal DATA_IN_D6: std_logic_vector(7 downto 0) := (others => '0'); 

--// CONFIRMATION --------------------------------------
constant FRAME_LENGTH : std_logic_vector(15 downto 0) := x"07FF";  -- 2047, prbs11
constant	SUPERFRAME_LENGTH : std_logic_vector(7 downto 0) := x"01";  -- no superframe structure here     
signal SAMPLE_CLK_IN_D7: std_logic:= '0';
signal DATA_IN_D7: std_logic_vector(7 downto 0) := (others => '0'); 
signal SOF: std_logic:= '0';
signal SOSF: std_logic:= '0';
signal SOF_LOCK_DETECT: std_logic:= '0';
signal RESET_REPLICA: std_logic:= '0';

--// SEQUENCE REPLICA -------------------------------
signal ADDR: std_logic_vector(10 downto 0) := (others => '0');
signal ADDR_INC: std_logic_vector(10 downto 0) := (others => '0');
signal DR: std_logic_vector(7 downto 0) := (others => '0');
signal DRP: std_logic_vector(0 downto 0) := (others => '0');
signal SAMPLE_CLK_IN_D8: std_logic:= '0';
signal SAMPLE_CLK_IN_D9: std_logic:= '0';
signal DATA_IN_D8: std_logic_vector(7 downto 0) := (others => '0'); 
signal DATA_IN_D9: std_logic_vector(7 downto 0) := (others => '0'); 
signal DATA_IN_D10: std_logic_vector(7 downto 0) := (others => '0'); 
signal DELAY: std_logic_vector(2 downto 0) := (others => '0');
signal DATA_IN_D9B: std_logic_vector(7 downto 0) := (others => '0'); 

--// COUNT ERRORS -----------------------------
signal DATA_ERR: std_logic_vector(15 downto 0) := (others => '0');
signal N_ERR: std_logic_vector(4 downto 0) := (others => '0');
signal N_BYTES: std_logic_vector(31 downto 0) := (others => '0');
signal N_BYTES_MAX: std_logic_vector(31 downto 0) := (others => '0');
signal N_BYTES_INC: std_logic_vector(31 downto 0) := (others => '0');
signal BER_LOCAL: std_logic_vector(31 downto 0) := (others => '0');

--------------------------------------------------------
--      IMPLEMENTATION
--------------------------------------------------------
begin

-- REMINDER++++++++++++++++++++++++++++++++
-- The SOF is aligned with the LAST BYTE in the periodic sequence
--+++++++++++++++++++++++++++++++++++++++++

--// MATCHED FILTER -----------------------------------
-- 6 CLK latency

MATCHED_FILTER4x8_001: MATCHED_FILTER4x8 PORT MAP(
		CLK => CLK,
		SYNC_RESET => SYNC_RESET,
		DATA_IN => DATA_IN,
		SAMPLE_CLK_IN => SAMPLE_CLK_IN,
		REFSEQ => x"8B4B3300",  -- last 24 bits of the 2047-bit PRBS-11 sequence and the first 8 bits
		DETECT_OUT => MF_DETECT_LOCAL,
		PHASE_OUT => MF_PHASE,
		BIT_ERRORS => open,
		INVERSION => MF_INVERSION,
		SAMPLE_CLK_OUT => SAMPLE_CLK_IN_D6,
		TP => open
	);


-- re-align DATA_IN with the matched filter output
RECLOCK_001: process(CLK)
begin
	if rising_edge(CLK) then
		DATA_IN_D <= DATA_IN;
		DATA_IN_D2 <= DATA_IN_D;
		DATA_IN_D3 <= DATA_IN_D2;
		DATA_IN_D4 <= DATA_IN_D3;
		DATA_IN_D5 <= DATA_IN_D4;
		DATA_IN_D6 <= DATA_IN_D5;
	end if;
end process;  


--// CONFIRMATION --------------------------------------
-- verify the periodic nature of the received sequence. Declare lock when true.
-- Flywheel: reconstruct the missing start of sequences when we are confident that the alignment is correct.
SOF_TRACK8_001: SOF_TRACK8 PORT MAP(
		CLK => CLK,
		SYNC_RESET => SYNC_RESET,
		DETECT_IN =>MF_DETECT_LOCAL ,
		PHASE_IN => MF_PHASE,
		INVERSION_IN => MF_INVERSION,
		SAMPLE_CLK_IN => SAMPLE_CLK_IN_D6,
		FRAME_LENGTH => FRAME_LENGTH,
		SUPERFRAME_LENGTH => SUPERFRAME_LENGTH,
		SAMPLE_CLK_OUT => SAMPLE_CLK_IN_D7,
		SOF_OUT => SOF,
		SOSF_OUT => SOSF,
		SOF_LOCK_DETECT => SOF_LOCK_DETECT, 
		PHASE_OUT => DELAY,         -- number of bit delays to apply to the input data stream so that it is aligned with the data replica DR. Confirmed at the first lock.
		RESET_REPLICA => RESET_REPLICA,
		DATA_ENABLE => open
	);

-- re-align DATA_IN with the matched filter output
RECLOCK_002: process(CLK)
begin
	if rising_edge(CLK) then
		DATA_IN_D7 <= DATA_IN_D6;
	end if;
end process;

--// SEQUENCE REPLICA -------------------------------            
-- Stores 8 contiguous PRBS-11 sequence. Period is 8*2047 bits.		
   REPLICA_001: RAMB16_S9
   generic map (
      INIT => X"000", --  Value of output RAM registers at startup
      SRVAL => X"000", --  Ouput value upon SSR assertion
      WRITE_MODE => "WRITE_FIRST", --  WRITE_FIRST, READ_FIRST or NO_CHANGE
      -- The following INIT_xx declarations specify the initial contents of the RAM
      -- Address 0 to 511
      INIT_00 => X"3BA0CC2D85C4380D2E8334476B74B90E82C970180CD3B4473F01CE7CF8F31F00",
      INIT_01 => X"114F7EFC53B5BBA09858F2B64237419B0BDF54B8F3B5BA0872B6164236E971E5",
      INIT_02 => X"EE7D05C46C7859F14E7D046C8696BD053AA33412B6E925904CD2B617EADC0795",
      INIT_03 => X"15111B0B8B21CF81CF80676A898E7DFAA3CADDFAA2623714469643CA76E873B5",
      INIT_04 => X"FD504D8493B5456FD413B5111AA361CF2B75BB5E5714B9F1E56FD5BB5FFFFE57",
      INIT_05 => X"76E9DB5F0099F1B0B24827C131E5911AF714B8590F81314F2B21CE29256E839E",
      INIT_06 => X"CE839F55BAA36067C19B5FAA23CA898FD5104D2E298E7C524924390ED6BC076A",
      INIT_07 => X"66961617EB74ED7BF5BB0A2263CB8BDF00CD84C7C0321DAE29DA09253B5E0361",
      INIT_08 => X"7740995B0A89711A5C06698ED6E8721D0493E13018A6698F7E029CF9F0E73F00",
      INIT_09 => X"239EFCF8A76A774131B1E46D856E823617BEA970E76B7511E46C2D846CD2E3CA",
      INIT_0A => X"DDFB0A88D9F0B2E29DFA08D80C2D7B0B744669246CD34B2099A46D2FD4B90F2A",
      INIT_0B => X"2A22361616439E039F01CFD4121DFBF44795BBF545C56E288C2C8794EDD0E76A",
      INIT_0C => X"FBA19A08276B8BDEA8276A233446C39E57EA76BDAE2872E3CBDFAA77BFFEFDAF",
      INIT_0D => X"ECD2B7BF0032E36165914E8263CA2335EE2970B31E02639E56429C534ADC063D",
      INIT_0E => X"9C073FAB7447C1CE8237BF544794131FAB219A5C521CF9A49248721CAC790FD4",
      INIT_0F => X"CC2C2D2ED6E9DAF7EA771544C69617BF019A098F81653A5C53B4134A76BC06C2",
      -- Address 512 to 1023
      INIT_10 => X"EF8032B71412E334B80CD21CADD1E53A0826C361304CD31EFD0438F3E1CF7F00",
      INIT_11 => X"463CF9F14FD5EE826262C9DB0ADD046D2E7C53E1CED7EA22C8D95A08D9A4C795",
      INIT_12 => X"BAF71510B3E165C53BF511B0195AF616E88CD248D8A697403249DB5EA8731F54",
      INIT_13 => X"55446C2C2C863C073E039EA9253AF6E98F2A77EB8B8ADD5018590E29DBA1CFD5",
      INIT_14 => X"F64335114ED616BD514FD446688C863DAFD4ED7A5D51E4C697BF55EF7EFDFB5F",
      INIT_15 => X"D9A56F7F0164C6C3CA229D04C794476ADC53E0663D04C63CAD8438A794B80D7A",
      INIT_16 => X"390F7E56E98E829D056F7EA98E28273E564334B9A438F2492591E43858F31EA8",
      INIT_17 => X"98595A5CACD3B5EFD5EF2A888C2D2F7E0334131E03CB74B8A6682794EC780D84",
      INIT_18 => X"DF01656E2924C6697019A4395AA3CB75104C86C36098A63DFA0970E6C39FFF00",
      INIT_19 => X"8C78F2E39FAADD05C5C492B715BA09DA5CF8A6C29DAFD54590B3B510B2498F2B",
      INIT_1A => X"75EF2B2066C3CB8A77EA236033B4EC2DD019A591B04D2F816492B6BD50E73EA8",
      INIT_1B => X"AA88D858580C790E7C063C534B74ECD31F55EED61715BBA130B21C52B6439FAB",
      INIT_1C => X"EC876A229CAC2D7AA39EA88DD0180D7B5EA9DBF5BAA2C88D2F7FABDEFDFAF7BF",
      INIT_1D => X"B34BDFFE02C88C8795453A098E298FD4B8A7C0CD7A088C795A09714E29711BF4",
      INIT_1E => X"731EFCACD21D053B0BDEFC521D514E7CAC8668724971E4934A22C971B0E63D50",
      INIT_1F => X"30B3B4B858A76BDFABDF5510195B5EFC0668263C0696E9704DD14E28D9F11A08",
      -- Address 1024 to 1535
      INIT_20 => X"BE03CADC52488CD3E0324873B44697EB20980C87C1304D7BF413E0CC873FFF01",
      INIT_21 => X"19F1E4C73F55BB0B8A89256F2B7413B4B9F04D853B5FAB8B20676B2164931E57",
      INIT_22 => X"EBDE5740CC869715EFD447C06668D95BA0334A23619B5E02C9246D7BA1CE7D50",
      INIT_23 => X"5511B1B1B018F21CF80C78A696E8D8A73FAADCAD2F2A7643616439A46C873E57",
      INIT_24 => X"D90FD54438595BF4463D511BA1311AF6BC52B7EB7545911B5FFE56BDFBF5EF7F",
      INIT_25 => X"6697BEFD0590190F2B8B74121C531EA9714F819BF51018F3B412E29C52E236E8",
      INIT_26 => X"E63CF859A53B0A7616BCF9A53AA29CF8580DD1E492E2C827954492E360CD7BA0",
      INIT_27 => X"60666971B14ED7BE57BFAB2032B6BCF80DD04C780C2CD3E19AA29D50B2E33510",
      INIT_28 => X"7C0794B9A59018A7C16590E6688D2ED74130190E83619AF6E827C0990F7FFE03",
      INIT_29 => X"32E2C98F7FAA761714134BDE56E8266873E19B0A77BE561741CED642C8263DAE",
      INIT_2A => X"D6BDAF80980D2F2BDEA98F80CDD0B2B740679446C236BD049249DAF6429DFBA0",
      INIT_2B => X"AA2262636131E439F019F04C2DD1B14F7F54B95B5F54EC86C2C87248D90E7DAE",
      INIT_2C => X"B31FAA8970B2B6E88D7AA236426334EC79A56ED7EB8A2237BEFCAD7AF7EBDFFF",
      INIT_2D => X"CD2E7DFB0B20331E5616E92438A63C52E39E0237EB2130E66925C439A5C46DD0",
      INIT_2E => X"CC79F0B34A7714EC2C78F34B754439F1B11AA2C925C5914F2A8924C7C19AF740",
      INIT_2F => X"C0CCD2E2629DAE7DAF7E5741646C79F11BA099F01858A6C335453BA164C76B20",
      -- Address 1536 to 2047
      INIT_30 => X"F90E28734B21314E83CB20CDD11A5DAE8360321C06C334EDD14F80331FFEFC07",
      INIT_31 => X"65C4931FFF54ED2E282696BCADD04DD0E6C23715EE7CAD2E829CAD85904D7A5C",
      INIT_32 => X"AD7B5F01311B5E56BC531F019BA1656F81CE288D846D7A092493B4ED853AF741",
      INIT_33 => X"5545C4C6C262C873E033E0995AA2639FFEA872B7BEA8D80D8591E590B21DFA5C",
      INIT_34 => X"673F5413E1646DD11BF5446D84C668D8F34ADDAED715456E7CF95BF5EED7BFFF",
      INIT_35 => X"9A5DFAF61740663CAC2CD249704C79A4C63D056ED64360CCD34A88734A89DBA0",
      INIT_36 => X"98F3E06795EE28D859F0E697EA8872E2633544934B8A239F5412498E8335EF81",
      INIT_37 => X"8099A5C5C53A5DFB5EFDAE82C8D8F2E2374033E131B04C876B8A7642C98ED740",
      INIT_38 => X"F21D50E69642629C0697419AA335BA5C07C164380C8669DAA39F00673EFCF90F",
      INIT_39 => X"CA88273FFEA9DA5D504C2C795BA19BA0CD856F2ADCF95A5D04395B0B219BF4B8",
      INIT_3A => X"5AF7BE026236BCAC78A73E023643CBDE029D511A09DBF412482669DB0B75EE83",
      INIT_3B => X"AB8A888D85C590E7C067C033B544C73EFD51E56E7D51B11B0A23CB21653BF4B9",
      INIT_3C => X"CF7EA826C2C9DAA237EA89DA088DD1B0E795BA5DAF2B8ADCF8F2B7EADDAF7FFF",
      INIT_3D => X"35BBF4ED2F80CC785859A493E098F2488D7B0ADCAC87C098A79510E79412B741",
      INIT_3E => X"30E7C1CF2ADD51B0B3E0CD2FD511E5C4C76A88269714473EA924921C076BDE03",
      INIT_3F => X"00334B8B8B75BAF6BDFA5D0591B1E5C56F8066C26360990ED714ED84921DAF81",
      -- The next set of INITP_xx are for the parity bits
      -- Address 0 to 511
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      -- Address 512 to 1023
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      -- Address 1024 to 1535
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      -- Address 1536 to 2047
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000")
   port map (
      DO => DR,      -- 8-bit Data Output, aligned with SAMPLE_CLK_IN_D9
      DOP => DRP,    -- 1-bit parity Output
      ADDR => ADDR,  -- 11-bit Address Input, aligned with SAMPLE_CLK_IN_D8
      CLK => CLK,    -- Clock
      DI => x"00",      -- 8-bit Data Input
      DIP => "0",    -- 1-bit parity Input
      EN => '1',      -- RAM Enable Input
      SSR => '0',    -- Synchronous Set/Reset Input
      WE => '0'       -- Write Enable Input
   );

-- replica read pointer management
-- Modulo FRAME_LENGTH      
-- ADDR is aligned with SAMPLE_CLK_IN_D8
ADDR_INC <= ADDR + 1;
ADDR_GEN_001: 	process(CLK)
begin
	if rising_edge(CLK) then
		if(RESET_REPLICA = '1') then  
			-- aligned with SAMPLE_CLK_IN_D7
			ADDR <= (others => '0');
		elsif(SAMPLE_CLK_IN_D7 = '1') then
			if(ADDR_INC = FRAME_LENGTH) then
				ADDR <= (others => '0');
			else
				ADDR <= ADDR_INC;
			end if;
		end if;
	end if;
end process;

-- re-align DATA_IN with the RAMB output
RECLOCK_003: process(CLK)
begin
	if rising_edge(CLK) then  
		SAMPLE_CLK_IN_D8 <= SAMPLE_CLK_IN_D7;  -- 1 CLK delay to get ADDR
		SAMPLE_CLK_IN_D9 <= SAMPLE_CLK_IN_D8;  -- 1 CLK delay to extract data from RAMB

		if(SAMPLE_CLK_IN_D7 = '1') then
			DATA_IN_D8 <= DATA_IN_D7;
		end if;

		if(SAMPLE_CLK_IN_D8 = '1') then
			DATA_IN_D9 <= DATA_IN_D8;
		end if;
		
		-- store two consecutive bytes (so that we can implement bit-wise delays)
		if(SAMPLE_CLK_IN_D9 = '1') then
			DATA_IN_D10 <= DATA_IN_D9;
		end if;
		
	end if;
end process;

-- Delay input signal by a few bits to align with the data replica   
-- still aligned with aligned with SAMPLE_CLK_IN_D9
DELAY_001: process(DATA_IN_D9, DATA_IN_D10, DELAY)
begin
	case DELAY is
		when "000" => DATA_IN_D9B <= DATA_IN_D9;  -- 0 bit offset
		when "001" => DATA_IN_D9B <= DATA_IN_D10(0) & DATA_IN_D9(7 downto 1);  -- 1 bit offset
		when "010" => DATA_IN_D9B <= DATA_IN_D10(1 downto 0) & DATA_IN_D9(7 downto 2);  -- 1 bit offset
		when "011" => DATA_IN_D9B <= DATA_IN_D10(2 downto 0) & DATA_IN_D9(7 downto 3);  -- 1 bit offset
		when "100" => DATA_IN_D9B <= DATA_IN_D10(3 downto 0) & DATA_IN_D9(7 downto 4);  -- 1 bit offset
		when "101" => DATA_IN_D9B <= DATA_IN_D10(4 downto 0) & DATA_IN_D9(7 downto 5);  -- 1 bit offset
		when "110" => DATA_IN_D9B <= DATA_IN_D10(5 downto 0) & DATA_IN_D9(7 downto 6);  -- 1 bit offset
		when others => DATA_IN_D9B <= DATA_IN_D10(6 downto 0) & DATA_IN_D9(7);  -- 1 bit offset
	end case;
end process;


--// COUNT ERRORS -----------------------------
DATA_ERR(7 downto 0) <= DR xor DATA_IN_D9B;
DATA_ERR(15 downto 8) <= x"00";  -- extend to 16-bit because we want to reuse PC_16 component

-- compute the number of non-zero bits. PC_16 is too big for 
-- 8-bit processing, but it will be optimized at synthesis (hopefully)
Inst_PC_16: PC_16 PORT MAP(
	A => DATA_ERR,
	O => N_ERR
);


N_BYTES_INC <= N_BYTES + 1;
NBYTES_GEN: process(CLK)
begin
	if rising_edge(CLK) then
		if(SYNC_RESET = '1') then
			BER_LOCAL <= (others => '0'); 
			BER <= (others => '0'); 
			BER_SAMPLE_CLK <= '0';
		elsif(SAMPLE_CLK_IN_D9 = '1') then
			if(N_BYTES_INC >=  N_BYTES_MAX) then
				-- end of BER computation window. 
				N_BYTES <= (others => '0');
				BER <= BER_LOCAL + (x"0000000" & N_ERR(3 downto 0));
				BER_SAMPLE_CLK <= '1';
				BER_LOCAL <= (others => '0'); 
			else
				N_BYTES <= N_BYTES_INC;
				BER_LOCAL <= BER_LOCAL + (x"0000000" & N_ERR(3 downto 0));
				BER_SAMPLE_CLK <= '0';
			end if;
		else
			BER_SAMPLE_CLK <= '0';
		end if;
	end if;
end process;

-- BER window size
NBYTES_MAX_GEN: process(CLK)
begin
	if rising_edge(CLK) then
		case CONTROL(2 downto 0) is
			when "001" => N_BYTES_MAX <= conv_std_logic_vector(10000,32);
			when "010" => N_BYTES_MAX <= conv_std_logic_vector(100000,32);
			when "011" => N_BYTES_MAX <= conv_std_logic_vector(1000000,32);
			when "100" => N_BYTES_MAX <= conv_std_logic_vector(10000000,32);
			when "101" => N_BYTES_MAX <= conv_std_logic_vector(100000000,32);
			when "110" => N_BYTES_MAX <= conv_std_logic_vector(1000000000,32);
			when others => N_BYTES_MAX <= conv_std_logic_vector(1000,32);
		end case;
	end if;
end process;

--// OUTPUTS ----------------------------------
OUTPUTS_GEN: process(CLK)
begin
	if rising_edge(CLK) then
		MF_DETECT <= MF_DETECT_LOCAL;
		MF_DETECT_CONFIRMED <= SOF;
		SYNC_LOCK <= SOF_LOCK_DETECT;
		SAMPLE_CLK_OUT <= SAMPLE_CLK_IN_D9;
		DATA_REPLICA <= DR;
		if(SAMPLE_CLK_IN_D9 = '1') and (DATA_IN_D9B /= DR) then
			BYTE_ERROR <= '1';
		else
			BYTE_ERROR <= '0';
		end if;
	end if;
end process;

end behavioral;
