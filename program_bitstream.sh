#!/bin/bash
source /tools/Xilinx/Vivado/2024.2/settings64.sh
vivado -mode batch -source ./program_fpga.tcl -tclargs ./firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.bit 
