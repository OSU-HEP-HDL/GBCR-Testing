-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Wed Jun 26 18:34:51 2024
-- Host        : OSUTeststand2 running 64-bit Ubuntu 24.04 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/fifo8to32/fifo8to32_stub.vhdl
-- Design      : fifo8to32
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fifo8to32 is
  Port ( 
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC
  );

end fifo8to32;

architecture stub of fifo8to32 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rst,wr_clk,rd_clk,din[7:0],wr_en,rd_en,dout[31:0],full,empty,prog_full,wr_rst_busy,rd_rst_busy";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fifo_generator_v13_2_10,Vivado 2024.1";
begin
end;
