transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+tri_mode_ethernet_mac_0  -L xpm -L xbip_utils_v3_0_13 -L xbip_pipe_v3_0_9 -L xbip_bram18k_v3_0_9 -L mult_gen_v12_0_21 -L axi_lite_ipif_v3_0_4 -L tri_mode_ethernet_mac_v9_0_32 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.tri_mode_ethernet_mac_0 xil_defaultlib.glbl

do {tri_mode_ethernet_mac_0.udo}

run 1000ns

endsim

quit -force
