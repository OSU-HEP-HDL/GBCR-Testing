# KC705 configuration
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 2.5 [current_design]

# KC705 configuration
# 200MHz onboard diff clock
create_clock -name system_clock -period 5.0 [get_ports SYS_CLK_P]
# 125MHz  for GTH/GTX/GTP
create_clock -name sgmii_clock -period 8.0 [get_ports SGMIICLK_Q0_P] 

#clock domain interaction
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks system_clock] -group [get_clocks -include_generated_clocks sgmii_clock]

# false path of resetter
set_false_path -from [get_pins -of_objects [get_cells -hierarchical -filter {NAME =~ *GLOBAL_RST_reg*}] -filter {NAME =~ *C}]
#-------------------------------------------------------------< System Clock Interface
# PadFunction: IO_L12P_T1_MRCC_33
set_property IOSTANDARD DIFF_SSTL15 [get_ports SYS_CLK_P]
set_property PACKAGE_PIN AD12 [get_ports SYS_CLK_P]
# PadFunction: IO_L12N_T1_MRCC_33
set_property IOSTANDARD DIFF_SSTL15 [get_ports SYS_CLK_N]
set_property PACKAGE_PIN AD11 [get_ports SYS_CLK_N]
#-------------------------------------------------------------> System Clock Interface

#-------------------------------------------------------------< SGMII clcok for GTP/GTH/GTX
set_property IOSTANDARD LVCMOS25 [get_ports SGMIICLK_Q0_P]
set_property PACKAGE_PIN G8 [get_ports SGMIICLK_Q0_P]
#changed by Datao, [Vivado 12-1815] Setting property 'IOSTANDARD' is not allowed for GT terminals. ["C:/GBCR2_SEU-SEE_Test/Develop/GBCR2_SEU_20211220_7RX/GBCR2_SEU_Test.srcs/constrs_1/new/top.xdc":28]
#set_property IOSTANDARD LVCMOS25 [get_ports SGMIICLK_Q0_N]
set_property PACKAGE_PIN G7 [get_ports SGMIICLK_Q0_N]
#-------------------------------------------------------------> SGMII clcok

#-------------------------------------------------------------< System reset Interface
# Bank: 33 - GPIO_SW_7 (CPU_RESET)
set_property VCCAUX_IO DONTCARE [get_ports SYS_RST]
set_property SLEW SLOW [get_ports SYS_RST]
set_property IOSTANDARD LVCMOS15 [get_ports SYS_RST]
set_property LOC AB7 [get_ports SYS_RST]
#-------------------------------------------------------------> System reset Interface

#-------------------------------------------------------------< Ethernet interface
set_property PACKAGE_PIN L20      [get_ports PHY_RESET_N]
set_property IOSTANDARD  LVCMOS25 [get_ports PHY_RESET_N]
set_property PACKAGE_PIN J21      [get_ports MDIO]
set_property IOSTANDARD  LVCMOS25 [get_ports MDIO]
set_property PACKAGE_PIN R23      [get_ports MDC]
set_property IOSTANDARD  LVCMOS25 [get_ports MDC]

set_property PACKAGE_PIN U28      [get_ports RGMII_RXD[3]]
set_property PACKAGE_PIN T25      [get_ports RGMII_RXD[2]]
set_property PACKAGE_PIN U25      [get_ports RGMII_RXD[1]]
set_property PACKAGE_PIN U30      [get_ports RGMII_RXD[0]]
set_property IOSTANDARD  LVCMOS25 [get_ports RGMII_RXD[3]]
set_property IOSTANDARD  LVCMOS25 [get_ports RGMII_RXD[2]]
set_property IOSTANDARD  LVCMOS25 [get_ports RGMII_RXD[1]]
set_property IOSTANDARD  LVCMOS25 [get_ports RGMII_RXD[0]]

set_property PACKAGE_PIN L28      [get_ports RGMII_TXD[3]]
set_property PACKAGE_PIN M29      [get_ports RGMII_TXD[2]]
set_property PACKAGE_PIN N25      [get_ports RGMII_TXD[1]]
set_property PACKAGE_PIN N27      [get_ports RGMII_TXD[0]]
set_property IOSTANDARD  LVCMOS25 [get_ports RGMII_TXD[3]]
set_property IOSTANDARD  LVCMOS25 [get_ports RGMII_TXD[2]]
set_property IOSTANDARD  LVCMOS25 [get_ports RGMII_TXD[1]]
set_property IOSTANDARD  LVCMOS25 [get_ports RGMII_TXD[0]]

set_property PACKAGE_PIN M27      [get_ports RGMII_TX_CTL]
set_property PACKAGE_PIN K30      [get_ports RGMII_TXC]
set_property IOSTANDARD  LVCMOS25 [get_ports RGMII_TX_CTL]
set_property IOSTANDARD  LVCMOS25 [get_ports RGMII_TXC]
set_property PACKAGE_PIN R28      [get_ports RGMII_RX_CTL]
set_property IOSTANDARD  LVCMOS25 [get_ports RGMII_RX_CTL]
set_property PACKAGE_PIN U27      [get_ports RGMII_RXC]
set_property IOSTANDARD  LVCMOS25 [get_ports RGMII_RXC]

# already set in ip / tri_mode_ethernet_mac_0.xdc
# create_clock -period 8 [get_ports RGMII_RXC]
set rx_clk_var [get_clocks -of [get_ports RGMII_RXC]]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks -of_objects [get_ports RGMII_RXC]] -group [get_clocks -include_generated_clocks sgmii_clock]

set_property IODELAY_GROUP tri_mode_ethernet_mac_iodelay_grp [get_cells -hier -filter {name =~ *trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_idelayctrl_common_i}]

# If TEMAC timing fails, use the following to relax the requirements
# The RGMII receive interface requirement allows a 1ns setup and 1ns hold - this is met but only just so constraints are relaxed
#set_input_delay -clock [get_clocks tri_mode_ethernet_mac_0_rgmii_rx_clk] -max -1.5 [get_ports {rgmii_rxd[*] rgmii_rx_ctl}]
#set_input_delay -clock [get_clocks tri_mode_ethernet_mac_0_rgmii_rx_clk] -min -2.8 [get_ports {rgmii_rxd[*] rgmii_rx_ctl}]
#set_input_delay -clock [get_clocks tri_mode_ethernet_mac_0_rgmii_rx_clk] -clock_fall -max -1.5 -add_delay [get_ports {rgmii_rxd[*] rgmii_rx_ctl}]
#set_input_delay -clock [get_clocks tri_mode_ethernet_mac_0_rgmii_rx_clk] -clock_fall -min -2.8 -add_delay [get_ports {rgmii_rxd[*] rgmii_rx_ctl}]

# the following properties can be adjusted if requried to adjust the IO timing
# the value shown (12) is the default used by the IP
# increasing this value will improve the hold timing but will also add jitter.
# set_property IDELAY_VALUE 12 [get_cells -hier -filter {name =~ *trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_i/*/rgmii_interface/delay_rgmii_rx* *trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_i/*/rgmii_interface/rxdata_bus[*].delay_rgmii_rx*}]
set_property IDELAY_VALUE 10 [get_cells -hier -filter {name =~ *trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_i/*/rgmii_interface/delay_rgmii_rx*}]
set_property IDELAY_VALUE 10 [get_cells -hier -filter {name =~ *trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_i/*/rgmii_interface/rxdata_bus[*].delay_rgmii_rx*}]

# FIFO Clock Crossing Constraints
# control signal is synched separately so this is a false path
set_max_delay -from [get_cells -hier -filter {name =~ *tx_fifo_i/rd_addr_txfer_reg[*]}] -to [get_cells -hier -filter {name =~ *fifo*wr_rd_addr_reg[*]}] 6 -datapath_only
set_max_delay -from [get_cells -hier -filter {name =~ *rx_fifo_i/rd_addr_reg[*]}] -to [get_cells -hier -filter {name =~ *fifo*wr_rd_addr_reg[*]}] 6 -datapath_only
set_max_delay -from [get_cells -hier -filter {name =~ *rx_fifo_i/wr_store_frame_tog_reg}] -to [get_cells -hier -filter {name =~ *fifo_i/resync_wr_store_frame_tog/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells -hier -filter {name =~ *rx_fifo_i/update_addr_tog_reg}] -to [get_cells -hier -filter {name =~ *rx_fifo_i/sync_rd_addr_tog/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells -hier -filter {name =~ *tx_fifo_i/wr_frame_in_fifo_reg}] -to [get_cells -hier -filter {name =~ *tx_fifo_i/resync_wr_frame_in_fifo/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells -hier -filter {name =~ *tx_fifo_i/wr_frames_in_fifo_reg}] -to [get_cells -hier -filter {name =~ *tx_fifo_i/resync_wr_frames_in_fifo/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells -hier -filter {name =~ *tx_fifo_i/frame_in_fifo_valid_tog_reg}] -to [get_cells -hier -filter {name =~ *tx_fifo_i/resync_fif_valid_tog/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells -hier -filter {name =~ *tx_fifo_i/rd_txfer_tog_reg}] -to [get_cells -hier -filter {name =~ *tx_fifo_i/resync_rd_txfer_tog/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells -hier -filter {name =~ *tx_fifo_i/rd_tran_frame_tog_reg}] -to [get_cells -hier -filter {name =~ *tx_fifo_i/resync_rd_tran_frame_tog/data_sync_reg0}] 6 -datapath_only

# False paths for async reset removal synchronizers
set_false_path -to [get_pins -of_objects [get_cells -hierarchical -filter {NAME =~ *tri_mode_ethernet*reset_sync*}] -filter {NAME =~ *PRE}]

#-------------------------------------------------------------> Ethernet interface

#-------------------------------------------------------------< control_interface
set_false_path -from [get_pins -of_objects [get_cells -hierarchical -filter {NAME =~ *control_interface_inst*sConfigReg_reg[*]}] -filter {NAME =~ *C}]
set_false_path -from [get_pins -of_objects [get_cells -hierarchical -filter {NAME =~ *control_interface_inst*sPulseReg_reg[*]}] -filter {NAME =~ *C}]
set_false_path -to [get_pins -of_objects [get_cells -hierarchical -filter {NAME =~ *control_interface_inst*sRegOut_reg[*]}] -filter {NAME =~ *D}]
#-------------------------------------------------------------> control_interface

#-------------------------------------------------------------< LED Interface
# Bank: 33 - GPIO_LED_0_LS
set_property DRIVE 12 [get_ports {LED8Bit[0]}]
set_property SLEW SLOW [get_ports {LED8Bit[0]}]
set_property IOSTANDARD LVCMOS15 [get_ports {LED8Bit[0]}]
set_property LOC AB8 [get_ports {LED8Bit[0]}]

# Bank: 33 - GPIO_LED_1_LS
set_property DRIVE 12 [get_ports {LED8Bit[1]}]
set_property SLEW SLOW [get_ports {LED8Bit[1]}]
set_property IOSTANDARD LVCMOS15 [get_ports {LED8Bit[1]}]
set_property LOC AA8 [get_ports {LED8Bit[1]}]

# Bank: 33 - GPIO_LED_2_LS
set_property DRIVE 12 [get_ports {LED8Bit[2]}]
set_property SLEW SLOW [get_ports {LED8Bit[2]}]
set_property IOSTANDARD LVCMOS15 [get_ports {LED8Bit[2]}]
set_property LOC AC9 [get_ports {LED8Bit[2]}]

# Bank: 33 - GPIO_LED_3_LS
set_property DRIVE 12 [get_ports {LED8Bit[3]}]
set_property SLEW SLOW [get_ports {LED8Bit[3]}]
set_property IOSTANDARD LVCMOS15 [get_ports {LED8Bit[3]}]
set_property LOC AB9 [get_ports {LED8Bit[3]}]

# Bank: - GPIO_LED_4_LS
set_property DRIVE 12 [get_ports {LED8Bit[4]}]
set_property SLEW SLOW [get_ports {LED8Bit[4]}]
set_property IOSTANDARD LVCMOS25 [get_ports {LED8Bit[4]}]
set_property LOC AE26 [get_ports {LED8Bit[4]}]

# Bank: - GPIO_LED_5_LS
set_property DRIVE 12 [get_ports {LED8Bit[5]}]
set_property SLEW SLOW [get_ports {LED8Bit[5]}]
set_property IOSTANDARD LVCMOS25 [get_ports {LED8Bit[5]}]
set_property LOC G19 [get_ports {LED8Bit[5]}]

# Bank: - GPIO_LED_6_LS
set_property DRIVE 12 [get_ports {LED8Bit[6]}]
set_property SLEW SLOW [get_ports {LED8Bit[6]}]
set_property IOSTANDARD LVCMOS25 [get_ports {LED8Bit[6]}]
set_property LOC E18 [get_ports {LED8Bit[6]}]

# Bank: - GPIO_LED_7_LS
set_property DRIVE 12 [get_ports {LED8Bit[7]}]
set_property SLEW SLOW [get_ports {LED8Bit[7]}]
set_property IOSTANDARD LVCMOS25 [get_ports {LED8Bit[7]}]
set_property LOC F16 [get_ports {LED8Bit[7]}]
#-------------------------------------------------------------> LED Interface

#-------------------------------------------------------------< DIPSw4Bit
# GPIO_DIP_SW0
set_property SLEW SLOW [get_ports {DIPSw4Bit[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {DIPSw4Bit[0]}]
set_property LOC Y29 [get_ports {DIPSw4Bit[0]}]

# GPIO_DIP_SW1
set_property SLEW SLOW [get_ports {DIPSw4Bit[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {DIPSw4Bit[1]}]
set_property LOC W29 [get_ports {DIPSw4Bit[1]}]

# GPIO_DIP_SW2
set_property SLEW SLOW [get_ports {DIPSw4Bit[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {DIPSw4Bit[2]}]
set_property LOC AA28 [get_ports {DIPSw4Bit[2]}]

# GPIO_DIP_SW3
set_property SLEW SLOW [get_ports {DIPSw4Bit[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {DIPSw4Bit[3]}]
set_property LOC Y28 [get_ports {DIPSw4Bit[3]}]
#-------------------------------------------------------------> DIPS24Bit

####################### GT reference clock constraints #########################
create_clock -period 6.25 [get_ports Q0_CLK1_GTREFCLK_PAD_P_IN]

set_false_path -to [get_pins -hierarchical -filter {NAME =~ *_txfsmresetdone_r*/CLR}]
set_false_path -to [get_pins -hierarchical -filter {NAME =~ *_txfsmresetdone_r*/D}]

################################# RefClk Location constraints #####################
# GTX1
set_property LOC U7 [get_ports  Q0_CLK1_GTREFCLK_PAD_N_IN ]         
set_property LOC U8 [get_ports  Q0_CLK1_GTREFCLK_PAD_P_IN ]

# GTX2 X0Y0 PCIe7
set_property LOC AA4 [get_ports RXP_IN[0]]          
set_property LOC AA3 [get_ports RXN_IN[0]]

set_property LOC Y2 [get_ports TXP_OUT[0]]          
set_property LOC Y1 [get_ports TXN_OUT[0]]

# GTX2 X0Y1 PCIe6
set_property LOC Y6 [get_ports RXP_IN[1]]          
set_property LOC Y5 [get_ports RXN_IN[1]]

set_property LOC V2 [get_ports TXP_OUT[1]]          
set_property LOC V1 [get_ports TXN_OUT[1]]

# GTX2 X0Y2 PCIe5
set_property LOC W4 [get_ports RXP_IN[2]]          
set_property LOC W3 [get_ports RXN_IN[2]]

set_property LOC U4 [get_ports TXP_OUT[2]]          
set_property LOC U3 [get_ports TXN_OUT[2]]

# GTX2 X0Y3 PCIe4
set_property LOC V6 [get_ports RXP_IN[3]]          
set_property LOC V5 [get_ports RXN_IN[3]]

set_property LOC T2 [get_ports TXP_OUT[3]]          
set_property LOC T1 [get_ports TXN_OUT[3]]

# GTX2 X0Y4 PCIe3
set_property LOC T6 [get_ports RXP_IN[4]]          
set_property LOC T5 [get_ports RXN_IN[4]]

set_property LOC P2 [get_ports TXP_OUT[4]]          
set_property LOC P1 [get_ports TXN_OUT[4]]

 # GTX2 X0Y5 PCIe2
set_property LOC R4 [get_ports RXP_IN[5]]         
set_property LOC R3 [get_ports RXN_IN[5]]

set_property LOC N4 [get_ports TXP_OUT[5]]          
set_property LOC N3 [get_ports TXN_OUT[5]]

# GTX2 X0Y6 PCIe1
set_property LOC P6 [get_ports RXP_IN[6]]          
set_property LOC P5 [get_ports RXN_IN[6]]

set_property LOC M2 [get_ports TXP_OUT[6]]          
set_property LOC M1 [get_ports TXN_OUT[6]]

# GTX2 X0Y7 PCIe0
set_property LOC M6 [get_ports RXP_IN[7]]          
set_property LOC M5 [get_ports RXN_IN[7]]

set_property LOC L4 [get_ports TXP_OUT[7]]          
set_property LOC L3 [get_ports TXN_OUT[7]]

#-------------------------------------------------------------< IIC Interface
set_property PACKAGE_PIN AB25     [get_ports SDA]
set_property IOSTANDARD  LVCMOS25 [get_ports SDA]

set_property PACKAGE_PIN AB28     [get_ports SCL]
set_property IOSTANDARD  LVCMOS25 [get_ports SCL]

#-------------------------------------------------------------< TX Channel
# USER_SMA_CLOCK
set_property PACKAGE_PIN L25      [get_ports Data_INP]     
set_property IOSTANDARD LVDS_25   [get_ports Data_INP]
set_property PACKAGE_PIN K25      [get_ports Data_INN]
set_property IOSTANDARD LVDS_25   [get_ports Data_INN]

# USER_SMA_GPIO
set_property PACKAGE_PIN Y23      [get_ports Data_OUTP]      
set_property IOSTANDARD LVDS_25   [get_ports Data_OUTP]
set_property PACKAGE_PIN Y24      [get_ports Data_OUTN]
set_property IOSTANDARD LVDS_25   [get_ports Data_OUTN]
