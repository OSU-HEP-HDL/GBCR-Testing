set_property SRC_FILE_INFO {cfile:/home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.srcs/constrs_1/new/top.xdc rfile:../../../GBCR2_SEU_Test.srcs/constrs_1/new/top.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:19 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AD12 [get_ports SYS_CLK_P]
set_property src_info {type:XDC file:1 line:22 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AD11 [get_ports SYS_CLK_N]
set_property src_info {type:XDC file:1 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN G8 [get_ports SGMIICLK_Q0_P]
set_property src_info {type:XDC file:1 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN G7 [get_ports SGMIICLK_Q0_N]
set_property src_info {type:XDC file:1 line:38 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC AB7 [get_ports SYS_RST]
set_property src_info {type:XDC file:1 line:42 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN L20      [get_ports PHY_RESET_N]
set_property src_info {type:XDC file:1 line:44 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN J21      [get_ports MDIO]
set_property src_info {type:XDC file:1 line:46 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN R23      [get_ports MDC]
set_property src_info {type:XDC file:1 line:49 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U28      [get_ports RGMII_RXD[3]]
set_property src_info {type:XDC file:1 line:50 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T25      [get_ports RGMII_RXD[2]]
set_property src_info {type:XDC file:1 line:51 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U25      [get_ports RGMII_RXD[1]]
set_property src_info {type:XDC file:1 line:52 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U30      [get_ports RGMII_RXD[0]]
set_property src_info {type:XDC file:1 line:58 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN L28      [get_ports RGMII_TXD[3]]
set_property src_info {type:XDC file:1 line:59 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN M29      [get_ports RGMII_TXD[2]]
set_property src_info {type:XDC file:1 line:60 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN N25      [get_ports RGMII_TXD[1]]
set_property src_info {type:XDC file:1 line:61 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN N27      [get_ports RGMII_TXD[0]]
set_property src_info {type:XDC file:1 line:67 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN M27      [get_ports RGMII_TX_CTL]
set_property src_info {type:XDC file:1 line:68 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN K30      [get_ports RGMII_TXC]
set_property src_info {type:XDC file:1 line:71 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN R28      [get_ports RGMII_RX_CTL]
set_property src_info {type:XDC file:1 line:73 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U27      [get_ports RGMII_RXC]
set_property src_info {type:XDC file:1 line:94 export:INPUT save:INPUT read:READ} [current_design]
set_property IDELAY_VALUE 10 [get_cells -hier -filter {name =~ *trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_i/*/rgmii_interface/delay_rgmii_rx*}]
set_property src_info {type:XDC file:1 line:95 export:INPUT save:INPUT read:READ} [current_design]
set_property IDELAY_VALUE 10 [get_cells -hier -filter {name =~ *trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_i/*/rgmii_interface/rxdata_bus[*].delay_rgmii_rx*}]
set_property src_info {type:XDC file:1 line:99 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -hier -filter {name =~ *tx_fifo_i/rd_addr_txfer_reg[*]}] -to [get_cells -hier -filter {name =~ *fifo*wr_rd_addr_reg[*]}] 6 -datapath_only
set_property src_info {type:XDC file:1 line:100 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -hier -filter {name =~ *rx_fifo_i/rd_addr_reg[*]}] -to [get_cells -hier -filter {name =~ *fifo*wr_rd_addr_reg[*]}] 6 -datapath_only
set_property src_info {type:XDC file:1 line:101 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -hier -filter {name =~ *rx_fifo_i/wr_store_frame_tog_reg}] -to [get_cells -hier -filter {name =~ *fifo_i/resync_wr_store_frame_tog/data_sync_reg0}] 6 -datapath_only
set_property src_info {type:XDC file:1 line:102 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -hier -filter {name =~ *rx_fifo_i/update_addr_tog_reg}] -to [get_cells -hier -filter {name =~ *rx_fifo_i/sync_rd_addr_tog/data_sync_reg0}] 6 -datapath_only
set_property src_info {type:XDC file:1 line:103 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -hier -filter {name =~ *tx_fifo_i/wr_frame_in_fifo_reg}] -to [get_cells -hier -filter {name =~ *tx_fifo_i/resync_wr_frame_in_fifo/data_sync_reg0}] 6 -datapath_only
set_property src_info {type:XDC file:1 line:104 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -hier -filter {name =~ *tx_fifo_i/wr_frames_in_fifo_reg}] -to [get_cells -hier -filter {name =~ *tx_fifo_i/resync_wr_frames_in_fifo/data_sync_reg0}] 6 -datapath_only
set_property src_info {type:XDC file:1 line:105 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -hier -filter {name =~ *tx_fifo_i/frame_in_fifo_valid_tog_reg}] -to [get_cells -hier -filter {name =~ *tx_fifo_i/resync_fif_valid_tog/data_sync_reg0}] 6 -datapath_only
set_property src_info {type:XDC file:1 line:106 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -hier -filter {name =~ *tx_fifo_i/rd_txfer_tog_reg}] -to [get_cells -hier -filter {name =~ *tx_fifo_i/resync_rd_txfer_tog/data_sync_reg0}] 6 -datapath_only
set_property src_info {type:XDC file:1 line:107 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -hier -filter {name =~ *tx_fifo_i/rd_tran_frame_tog_reg}] -to [get_cells -hier -filter {name =~ *tx_fifo_i/resync_rd_tran_frame_tog/data_sync_reg0}] 6 -datapath_only
set_property src_info {type:XDC file:1 line:125 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC AB8 [get_ports {LED8Bit[0]}]
set_property src_info {type:XDC file:1 line:131 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC AA8 [get_ports {LED8Bit[1]}]
set_property src_info {type:XDC file:1 line:137 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC AC9 [get_ports {LED8Bit[2]}]
set_property src_info {type:XDC file:1 line:143 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC AB9 [get_ports {LED8Bit[3]}]
set_property src_info {type:XDC file:1 line:149 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC AE26 [get_ports {LED8Bit[4]}]
set_property src_info {type:XDC file:1 line:155 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC G19 [get_ports {LED8Bit[5]}]
set_property src_info {type:XDC file:1 line:161 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC E18 [get_ports {LED8Bit[6]}]
set_property src_info {type:XDC file:1 line:167 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC F16 [get_ports {LED8Bit[7]}]
set_property src_info {type:XDC file:1 line:174 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC Y29 [get_ports {DIPSw4Bit[0]}]
set_property src_info {type:XDC file:1 line:179 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC W29 [get_ports {DIPSw4Bit[1]}]
set_property src_info {type:XDC file:1 line:184 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC AA28 [get_ports {DIPSw4Bit[2]}]
set_property src_info {type:XDC file:1 line:189 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC Y28 [get_ports {DIPSw4Bit[3]}]
set_property src_info {type:XDC file:1 line:200 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC U7 [get_ports  Q0_CLK1_GTREFCLK_PAD_N_IN ]
set_property src_info {type:XDC file:1 line:201 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC U8 [get_ports  Q0_CLK1_GTREFCLK_PAD_P_IN ]
set_property src_info {type:XDC file:1 line:204 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC AA4 [get_ports RXP_IN[0]]
set_property src_info {type:XDC file:1 line:205 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC AA3 [get_ports RXN_IN[0]]
set_property src_info {type:XDC file:1 line:207 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC Y2 [get_ports TXP_OUT[0]]
set_property src_info {type:XDC file:1 line:208 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC Y1 [get_ports TXN_OUT[0]]
set_property src_info {type:XDC file:1 line:211 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC Y6 [get_ports RXP_IN[1]]
set_property src_info {type:XDC file:1 line:212 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC Y5 [get_ports RXN_IN[1]]
set_property src_info {type:XDC file:1 line:214 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC V2 [get_ports TXP_OUT[1]]
set_property src_info {type:XDC file:1 line:215 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC V1 [get_ports TXN_OUT[1]]
set_property src_info {type:XDC file:1 line:218 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC W4 [get_ports RXP_IN[2]]
set_property src_info {type:XDC file:1 line:219 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC W3 [get_ports RXN_IN[2]]
set_property src_info {type:XDC file:1 line:221 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC U4 [get_ports TXP_OUT[2]]
set_property src_info {type:XDC file:1 line:222 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC U3 [get_ports TXN_OUT[2]]
set_property src_info {type:XDC file:1 line:225 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC V6 [get_ports RXP_IN[3]]
set_property src_info {type:XDC file:1 line:226 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC V5 [get_ports RXN_IN[3]]
set_property src_info {type:XDC file:1 line:228 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC T2 [get_ports TXP_OUT[3]]
set_property src_info {type:XDC file:1 line:229 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC T1 [get_ports TXN_OUT[3]]
set_property src_info {type:XDC file:1 line:232 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC T6 [get_ports RXP_IN[4]]
set_property src_info {type:XDC file:1 line:233 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC T5 [get_ports RXN_IN[4]]
set_property src_info {type:XDC file:1 line:235 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC P2 [get_ports TXP_OUT[4]]
set_property src_info {type:XDC file:1 line:236 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC P1 [get_ports TXN_OUT[4]]
set_property src_info {type:XDC file:1 line:239 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC R4 [get_ports RXP_IN[5]]
set_property src_info {type:XDC file:1 line:240 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC R3 [get_ports RXN_IN[5]]
set_property src_info {type:XDC file:1 line:242 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC N4 [get_ports TXP_OUT[5]]
set_property src_info {type:XDC file:1 line:243 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC N3 [get_ports TXN_OUT[5]]
set_property src_info {type:XDC file:1 line:246 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC P6 [get_ports RXP_IN[6]]
set_property src_info {type:XDC file:1 line:247 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC P5 [get_ports RXN_IN[6]]
set_property src_info {type:XDC file:1 line:249 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC M2 [get_ports TXP_OUT[6]]
set_property src_info {type:XDC file:1 line:250 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC M1 [get_ports TXN_OUT[6]]
set_property src_info {type:XDC file:1 line:253 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC M6 [get_ports RXP_IN[7]]
set_property src_info {type:XDC file:1 line:254 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC M5 [get_ports RXN_IN[7]]
set_property src_info {type:XDC file:1 line:256 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC L4 [get_ports TXP_OUT[7]]
set_property src_info {type:XDC file:1 line:257 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC L3 [get_ports TXN_OUT[7]]
set_property src_info {type:XDC file:1 line:260 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AB25     [get_ports SDA]
set_property src_info {type:XDC file:1 line:263 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AB28     [get_ports SCL]
set_property src_info {type:XDC file:1 line:268 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN L25      [get_ports Data_INP]
set_property src_info {type:XDC file:1 line:270 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN K25      [get_ports Data_INN]
set_property src_info {type:XDC file:1 line:274 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y23      [get_ports Data_OUTP]
set_property src_info {type:XDC file:1 line:276 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y24      [get_ports Data_OUTN]