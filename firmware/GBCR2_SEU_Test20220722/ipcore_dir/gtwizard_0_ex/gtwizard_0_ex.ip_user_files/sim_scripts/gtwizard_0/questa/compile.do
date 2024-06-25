vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  \
"../../../../gtwizard_0_ex.gen/sources_1/ip/gtwizard_0/gtwizard_0/example_design/gtwizard_0_tx_startup_fsm.v" \
"../../../../gtwizard_0_ex.gen/sources_1/ip/gtwizard_0/gtwizard_0/example_design/gtwizard_0_rx_startup_fsm.v" \
"../../../../gtwizard_0_ex.gen/sources_1/ip/gtwizard_0/gtwizard_0_init.v" \
"../../../../gtwizard_0_ex.gen/sources_1/ip/gtwizard_0/gtwizard_0_cpll_railing.v" \
"../../../../gtwizard_0_ex.gen/sources_1/ip/gtwizard_0/gtwizard_0_gt.v" \
"../../../../gtwizard_0_ex.gen/sources_1/ip/gtwizard_0/gtwizard_0_multi_gt.v" \
"../../../../gtwizard_0_ex.gen/sources_1/ip/gtwizard_0/gtwizard_0/example_design/gtwizard_0_sync_block.v" \
"../../../../gtwizard_0_ex.gen/sources_1/ip/gtwizard_0/gtwizard_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

