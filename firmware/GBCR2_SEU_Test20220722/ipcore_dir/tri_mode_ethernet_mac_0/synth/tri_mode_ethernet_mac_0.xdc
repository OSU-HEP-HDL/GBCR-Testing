
# PART is xc7k325tffg900-1

############################################################
# Clock Period Constraints                                 #
############################################################

############################################################
# RX Clock period Constraints (per instance)               #
############################################################
# Receiver clock period constraints: please do not relax
create_clock -period 8 [get_ports rgmii_rxc]

#
####
#######
##########
#############
#################
#BLOCK CONSTRAINTS

############################################################
# Physical Interface Constraints
############################################################

############################################################
# The following are required to maximise setup/hold        #
############################################################

set_property SLEW FAST [get_ports {rgmii_txd[3] rgmii_txd[2] rgmii_txd[1] rgmii_txd[0] rgmii_tx_ctl rgmii_txc}]


############################################################
# RGMII: IODELAY Constraints
############################################################
# Please modify the value of the IDELAY_VALUE/ODELAY_VALUE
# according to your design.
# For more information on IDELAYCTRL and IODELAY, please
# refer to the Series-7 User Guide.
#
# Apply the same IDELAY_VALUE to all RGMII RX inputs.
# This is to provide a similiar Clock Path and Data Path delay.
set_property IDELAY_VALUE 12 [get_cells {rgmii_interface/delay_rgmii_rx* rgmii_interface/rxdata_bus[*].delay_rgmii_rx*}]

# Group IODELAY components
set_property IODELAY_GROUP tri_mode_ethernet_mac_iodelay_grp [get_cells {rgmii_interface/delay_rgmii_rx* rgmii_interface/rxdata_bus[*].delay_rgmii_rx*}]


#
####
#######
##########
#############
#################
#CORE CONSTRAINTS



############################################################
# Crossing of Clock Domain Constraints: please do not edit #
############################################################

# control signal is synced separately so we want a max delay to ensure the signal has settled by the time the control signal has passed through the synch
set_max_delay -from [get_cells {tri_mode_ethernet_mac_0_core/flow/rx_pause/pause*to_tx_reg[*]}] -to [get_cells {tri_mode_ethernet_mac_0_core/flow/tx_pause/count_set*reg}] 32 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_0_core/flow/rx_pause/pause*to_tx_reg[*]}] -to [get_cells {tri_mode_ethernet_mac_0_core/flow/tx_pause/pause_count*reg[*]}] 32 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_0_core/flow/rx_pause/pause_req_to_tx_int_reg}] -to [get_cells {tri_mode_ethernet_mac_0_core/flow/tx_pause/sync_good_rx/data_sync_reg0}] 6 -datapath_only



# ignore paths from the speed control
set_false_path -from [get_cells {tri_mode_ethernet_mac_0_core/speed*speed_is*100_reg}] -to [get_cells {enable_gen/txspeedis*100gen/data_sync_reg0}]
set_false_path -from [get_cells {tri_mode_ethernet_mac_0_core/speed*speed_is*100_reg}] -to [get_cells {rxspeedis10100gen/data_sync_reg0}]
set_false_path -from [get_cells {tri_mode_ethernet_mac_0_core/speed*speed_is*100_reg}] -to [get_cells -filter {IS_SEQUENTIAL} {rgmii_interface/*}]
set_false_path -from [get_cells {tri_mode_ethernet_mac_0_core/speed*speed_is*100_reg}] -to [get_cells -filter {IS_SEQUENTIAL} {enable_gen/*}]




############################################################
# Ignore paths to resync flops
############################################################
set_false_path -to [get_pins -filter {REF_PIN_NAME =~ PRE} -of [get_cells -hier -regexp {.*\/async_rst.*}]]
set_false_path -to [get_pins -filter {REF_PIN_NAME =~ CLR} -of [get_cells -hier -regexp {.*\/async_rst.*}]]
set_false_path -from [get_cells {tri_mode_ethernet_mac_0_core/sync_*tx_clk/sync_rst1_reg}] -to [get_cells {*/data_sync_reg0}]
set_max_delay -from [get_cells {tri_mode_ethernet_mac_0_core/addr_filter_top/addr_regs.promiscuous_mode_reg_reg}] -to [get_cells {tri_mode_ethernet_mac_0_core/addr_filter_top/address_filter_inst/resync_promiscuous_mode/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_0_core/*managen/conf/update_pause_ad_int_reg}] -to [get_cells {tri_mode_ethernet_mac_0_core/addr_filter_top/address_filter_inst/sync_update/data_sync_reg0}] 6 -datapath_only


# the mdio interface is clocked from the axi clock but the clock is so slow is can be considered to be data
# the data related outputs are output on the falling edge of the MDC output so both can simply be considered to be multicycle paths
set_multicycle_path 10 -setup -from [get_cells {tri_mode_ethernet_mac_0_core/*managen/mdio_enabled.miim_clk_int_reg}  ] -throu [get_ports mdc]
set_multicycle_path 9 -hold -from   [get_cells {tri_mode_ethernet_mac_0_core/*managen/mdio_enabled.miim_clk_int_reg}  ] -throu [get_ports mdc]
set_multicycle_path 10 -setup -from [get_cells {tri_mode_ethernet_mac_0_core/*managen/mdio_enabled.phy/enable_reg_reg}] -throu [get_ports mdc]
set_multicycle_path 9 -hold -from   [get_cells {tri_mode_ethernet_mac_0_core/*managen/mdio_enabled.phy/enable_reg_reg}] -throu [get_ports mdc]
# mdio has timing implications but slow interface so relaxed
set_false_path  -to [get_cells -hier -filter {NAME =~ *managen/mdio_enabled.phy/mdio_in_reg1_reg}]

set_max_delay -from [get_cells {tri_mode_ethernet_mac_0_core/sync_int_tx_rst_mgmt_tx_clk/sync_rst1_reg}] -to [get_cells {enable_gen/reset90gen/data_sync_reg0}] 6 -datapath_only

############################################################
# CDC Waivers
############################################################

create_waiver -internal -scope -quiet -type CDC -id {CDC-4} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored." -from [get_pins -of [get_cells -hier -filter {name =~ */int_rx_pause_ad_reg[*]*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */tx/pause_source_shift_reg[*]*}] -filter {name =~ *D}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "his data-bus is part of the DMUX synchronizer, which is essentially a false paths and can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */bus2ip_addr_*_reg[*]*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */stats_block.statistics_counters/ipic_rd_clear_reg*}] -filter {name =~ *D}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/conf/int_tx_crc_mode_wr_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */txgen/INT_CRC_MODE_reg*}] -filter {name =~ *D}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/conf/int_tx_en_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */txgen/INT_ENABLE_reg*}] -filter {name =~ *D}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/conf/int_tx_jumbo_en_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */txgen/INT_JUMBO_ENABLE_reg*}] -filter {name =~ *D}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/conf/int_tx_vlan_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */txgen/INT_VLAN_ENABLE_reg*}] -filter {name =~ *D}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */rx_pause/pause_value_to_tx_reg[*]*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */tx_pause/count_set_reg*}] -filter {name =~ *D}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "This data-bus is part of the DMUX synchronizer, which is essentially a false paths and can be ignored." -from [get_pins -of [get_cells -hier -filter {name =~ */stats_block.statistics_counters/rd_data_ref_reg[*]*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */stats_block.statistics_counters/ip2bus_data_reg[*]*}] -filter {name =~ *D}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/mdio_enabled.miim_clk_int_reg*}] -filter {name =~ *Q}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-11} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Part of reset synchronizer. Safe to ignore" -from [get_pins -of [get_cells -hier -filter {name =~ */sync_stats_reset/sync_rst1_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */SYNC_STATS_RESET/async_rst0_reg*}] -filter {name =~ *PRE}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/conf/int_rx_en_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */rxgen/ENABLE_REG_reg*}] -filter {name =~ *D}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/conf/int_rx_pause_ad_reg[*]*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */address_filter_inst/load_wr_data_reg[*]*}] -filter {name =~ *D}] 

create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Safe to ignore. This data-bus is read-date port of the LUT based RAM whose read address is generated in the destination clock domain." -from [get_pins -of [get_cells -hier -filter {name =~ */byte_wide_ram[*].header_*_dist_ram/DP*}] -filter {name =~ *CLK}] -to [get_pins -of [get_cells -hier -filter {name =~ */bit_match_gen[*].bit_match_reg[*]*}] -filter {name =~ *D}]
create_waiver -internal -scope -quiet -type CDC -id {CDC-11} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */*_speed_reg[1]*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */data_sync_reg0*}] -filter {name =~ *D}]
create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/conf/int_speed_reg[1]*}] -filter {name =~ *C}] -to [list [get_pins -of [get_cells -hier -filter {name =~ */alignment_err_reg_reg*}] -filter {name =~ *D}] [get_pins -of [get_cells -hier -filter {name =~ */rx_dv_reg3_reg*}] -filter {name =~ *D}] ]

create_waiver -internal -scope -quiet -type CDC -id {CDC-12} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/conf/int_speed_reg[1]*}] -filter {name =~ *C}] -to [list [get_pins -of [get_cells -hier -filter {name =~ */*_tx_e*_to_phy_reg*}] -filter {name =~ *D}] [get_pins -of [get_cells -hier -filter {name =~ */*_txd_to_phy_reg[*]*}] -filter {name =~ *D}] ]

create_waiver -internal -scope -quiet -type CDC -id {CDC-10} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Combi logic will be not result in glitched and thus safe to ignore." -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/conf/int_speed_reg[1]*}] -filter {name =~ *C}] -to [list [get_pins -of [get_cells -hier -filter {name =~ */*_tx_e*_to_phy_reg*}] -filter {name =~ *D}] [get_pins -of [get_cells -hier -filter {name =~ */*_txd_to_phy_reg[*]*}] -filter {name =~ *D}] ]

create_waiver -internal -scope -quiet -type CDC -id {CDC-13} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */speed_host.speed_is_10_100_reg*}] -filter {name =~ *C}] -to [list [get_pins -of [get_cells -hier -filter {name =~ */clock_inst/BUFGMUX_SPEED_CLK*}] -filter {name =~ *CE*}] [get_pins -of [get_cells -hier -filter {name =~ */rgmii_interface/rgmii_tx_ctl_out*}] -filter {name =~ *D*}] [get_pins -of [get_cells -hier -filter {name =~ */rgmii_interface/txdata_out_bus[*].rgmii_txd_out*}] -filter {name =~ *D2}] [get_pins -of [get_cells -hier -filter {name =~ */rgmii_interface/txdata_out_bus[*].rgmii_txd_out*}] -filter {name =~ *D2}] [get_pins -of [get_cells -hier -filter {name =~ */rgmii_interface/ctl_output*}] -filter {name =~ *D[*]}] ]
create_waiver -internal -scope -quiet -type CDC -id {CDC-13} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */speed_host.speed_is_10_100_reg*}] -filter {name =~ *C}] -to [list [get_pins -of [get_cells -hier -filter {name =~ */rgmii_interface/ctl_output*}] -filter {name =~ *D[*]}] [get_pins -of [get_cells -hier -filter {name =~ */rgmii_interface/txdata_out_bus[*].rgmii_txd_out*}] -filter {name =~ *D[4]}] ]
create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */speed_host.speed_is_10_100_reg*}] -filter {name =~ *C}] -to [list [get_pins -of [get_cells -hier -filter {name =~ */rgmii_interface/control_enable_reg*}] -filter {name =~ *D}] [get_pins -of [get_cells -hier -filter {name =~ */rgmii_interface/phy_tx_enable_reg_reg*}] -filter {name =~ *D}] [get_pins -of [get_cells -hier -filter {name =~ */enable_gen/clk_div5_shift_int_reg*}] -filter {name =~ *D}] [get_pins -of [get_cells -hier -filter {name =~ */enable_gen/clk_div5_int_reg*}] -filter {name =~ *D}] ]

