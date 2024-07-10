vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
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

