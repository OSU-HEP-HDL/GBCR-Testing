vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm -64 -incr -mfcu  -sv "+incdir+../../../../../firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/vio_0/hdl/verilog" "+incdir+../../../../../firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/vio_0/hdl" \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/vio_0/hdl/verilog" "+incdir+../../../../../firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/vio_0/hdl" \
"../../../../../firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/vio_0/sim/vio_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

