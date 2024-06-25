-- Simulation model for Xilinx block ram with initial values passed through the generic map.
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RAMB16_S9 is 
generic (
	INIT_00: std_logic_vector(255 downto 0);
	INIT_01: std_logic_vector(255 downto 0);
	INIT_02: std_logic_vector(255 downto 0);
	INIT_03: std_logic_vector(255 downto 0);
	INIT_04: std_logic_vector(255 downto 0);
	INIT_05: std_logic_vector(255 downto 0);
	INIT_06: std_logic_vector(255 downto 0);
	INIT_07: std_logic_vector(255 downto 0);
	INIT_08: std_logic_vector(255 downto 0);
	INIT_09: std_logic_vector(255 downto 0);
	INIT_0A: std_logic_vector(255 downto 0);
	INIT_0B: std_logic_vector(255 downto 0);
	INIT_0C: std_logic_vector(255 downto 0);
	INIT_0D: std_logic_vector(255 downto 0);
	INIT_0E: std_logic_vector(255 downto 0);
	INIT_0F: std_logic_vector(255 downto 0);
	INIT_10: std_logic_vector(255 downto 0);
	INIT_11: std_logic_vector(255 downto 0);
	INIT_12: std_logic_vector(255 downto 0);
	INIT_13: std_logic_vector(255 downto 0);
	INIT_14: std_logic_vector(255 downto 0);
	INIT_15: std_logic_vector(255 downto 0);
	INIT_16: std_logic_vector(255 downto 0);
	INIT_17: std_logic_vector(255 downto 0);
	INIT_18: std_logic_vector(255 downto 0);
	INIT_19: std_logic_vector(255 downto 0);
	INIT_1A: std_logic_vector(255 downto 0);
	INIT_1B: std_logic_vector(255 downto 0);
	INIT_1C: std_logic_vector(255 downto 0);
	INIT_1D: std_logic_vector(255 downto 0);
	INIT_1E: std_logic_vector(255 downto 0);
	INIT_1F: std_logic_vector(255 downto 0);
	INIT_20: std_logic_vector(255 downto 0);
	INIT_21: std_logic_vector(255 downto 0);
	INIT_22: std_logic_vector(255 downto 0);
	INIT_23: std_logic_vector(255 downto 0);
	INIT_24: std_logic_vector(255 downto 0);
	INIT_25: std_logic_vector(255 downto 0);
	INIT_26: std_logic_vector(255 downto 0);
	INIT_27: std_logic_vector(255 downto 0);
	INIT_28: std_logic_vector(255 downto 0);
	INIT_29: std_logic_vector(255 downto 0);
	INIT_2A: std_logic_vector(255 downto 0);
	INIT_2B: std_logic_vector(255 downto 0);
	INIT_2C: std_logic_vector(255 downto 0);
	INIT_2D: std_logic_vector(255 downto 0);
	INIT_2E: std_logic_vector(255 downto 0);
	INIT_2F: std_logic_vector(255 downto 0);
	INIT_30: std_logic_vector(255 downto 0);
	INIT_31: std_logic_vector(255 downto 0);
	INIT_32: std_logic_vector(255 downto 0);
	INIT_33: std_logic_vector(255 downto 0);
	INIT_34: std_logic_vector(255 downto 0);
	INIT_35: std_logic_vector(255 downto 0);
	INIT_36: std_logic_vector(255 downto 0);
	INIT_37: std_logic_vector(255 downto 0);
	INIT_38: std_logic_vector(255 downto 0);
	INIT_39: std_logic_vector(255 downto 0);
	INIT_3A: std_logic_vector(255 downto 0);
	INIT_3B: std_logic_vector(255 downto 0);
	INIT_3C: std_logic_vector(255 downto 0);
	INIT_3D: std_logic_vector(255 downto 0);
	INIT_3E: std_logic_vector(255 downto 0);
	INIT_3F: std_logic_vector(255 downto 0);
	INITP_00: std_logic_vector(255 downto 0);
	INITP_01: std_logic_vector(255 downto 0);
	INITP_02: std_logic_vector(255 downto 0);
	INITP_03: std_logic_vector(255 downto 0);
	INITP_04: std_logic_vector(255 downto 0);
	INITP_05: std_logic_vector(255 downto 0);
	INITP_06: std_logic_vector(255 downto 0);						   	
	INITP_07: std_logic_vector(255 downto 0)
);
port (
		 DO : out std_logic_vector (7 downto 0);
         DOP : out std_logic_vector (0 downto 0);
         ADDR : in std_logic_vector (10 downto 0);
         CLK : in std_logic;
         DI : in std_logic_vector (7 downto 0);
         DIP : in std_logic_vector (0 downto 0);
         EN : in std_logic;
         SSR : in std_logic;
         WE : in std_logic
);
end entity;


ARCHITECTURE behavior OF RAMB16_S9 IS

-- signals
signal MEMADDR: integer range 0 to 1023;
 
BEGIN

MEMADDR <= conv_integer(ADDR);


mem_process : process (CLK, MEMADDR, DI, DIP, EN, WE)
variable  MEM : std_logic_vector(16383 downto 0) :=  INIT_3F &
                                                     INIT_3E &
                                                     INIT_3D &
                                                     INIT_3C &
                                                     INIT_3B &
                                                     INIT_3A &
                                                     INIT_39 &
                                                     INIT_38 &
                                                     INIT_37 &
                                                     INIT_36 &
                                                     INIT_35 &
                                                     INIT_34 &
                                                     INIT_33 &
                                                     INIT_32 &
                                                     INIT_31 &
                                                     INIT_30 &
                                                     INIT_2F &
                                                     INIT_2E &
                                                     INIT_2D &
                                                     INIT_2C &
                                                     INIT_2B &
                                                     INIT_2A &
                                                     INIT_29 &
                                                     INIT_28 &
                                                     INIT_27 &
                                                     INIT_26 &
                                                     INIT_25 &
                                                     INIT_24 &
                                                     INIT_23 &
                                                     INIT_22 &
                                                     INIT_21 &
                                                     INIT_20 &
                                                     INIT_1F &
                                                     INIT_1E &
                                                     INIT_1D &
                                                     INIT_1C &
                                                     INIT_1B &
                                                     INIT_1A &
                                                     INIT_19 &
                                                     INIT_18 &
                                                     INIT_17 &
                                                     INIT_16 &
                                                     INIT_15 &
                                                     INIT_14 &
                                                     INIT_13 &
                                                     INIT_12 &
                                                     INIT_11 &
                                                     INIT_10 &
                                                     INIT_0F &
                                                     INIT_0E &
                                                     INIT_0D &
                                                     INIT_0C &
                                                     INIT_0B &
                                                     INIT_0A &
                                                     INIT_09 &
                                                     INIT_08 &
                                                     INIT_07 &
                                                     INIT_06 &
                                                     INIT_05 &
                                                     INIT_04 &
                                                     INIT_03 &
                                                     INIT_02 &
                                                     INIT_01 &
                                                     INIT_00;

 variable MEMP : std_logic_vector(2047 downto 0) :=  INITP_07 &
                                                     INITP_06 &
                                                     INITP_05 &
                                                     INITP_04 &
                                                     INITP_03 &
                                                     INITP_02 &
                                                     INITP_01 &
                                                     INITP_00;

      begin

       if(WE = '1') and (EN = '1') then
            MEM((8*(MEMADDR+1) -1) downto (8*MEMADDR)):= DI;
			MEMP((1*(MEMADDR+1) -1) downto (1*MEMADDR)) := DIP;
      end if;

		if rising_edge(CLK) then
			if(EN = '1') then
		       DO <= MEM((8*(MEMADDR+1) -1) downto (8*MEMADDR));
		       DOP <= MEMP((1*(MEMADDR+1) -1) downto (1*MEMADDR));
			end if;
		end if;
end process;

 
END behavior;
