transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr "+incdir+../../../../../firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/vio_0/hdl/verilog" "+incdir+../../../../../firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/vio_0/hdl" -l xpm -l xil_defaultlib \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/vio_0/hdl/verilog" "+incdir+../../../../../firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/vio_0/hdl" -l xpm -l xil_defaultlib \
"../../../../../firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/vio_0/sim/vio_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

