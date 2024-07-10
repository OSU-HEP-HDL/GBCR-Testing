// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Wed Jun 26 18:36:16 2024
// Host        : OSUTeststand2 running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/gtwizard_0/gtwizard_0_stub.v
// Design      : gtwizard_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "gtwizard_0,gtwizard_v3_6_16,{protocol_file=Start_from_scratch}" *)
module gtwizard_0(sysclk_in, soft_reset_tx_in, 
  soft_reset_rx_in, dont_reset_on_data_error_in, gt0_tx_fsm_reset_done_out, 
  gt0_rx_fsm_reset_done_out, gt0_data_valid_in, gt1_tx_fsm_reset_done_out, 
  gt1_rx_fsm_reset_done_out, gt1_data_valid_in, gt2_tx_fsm_reset_done_out, 
  gt2_rx_fsm_reset_done_out, gt2_data_valid_in, gt3_tx_fsm_reset_done_out, 
  gt3_rx_fsm_reset_done_out, gt3_data_valid_in, gt4_tx_fsm_reset_done_out, 
  gt4_rx_fsm_reset_done_out, gt4_data_valid_in, gt5_tx_fsm_reset_done_out, 
  gt5_rx_fsm_reset_done_out, gt5_data_valid_in, gt6_tx_fsm_reset_done_out, 
  gt6_rx_fsm_reset_done_out, gt6_data_valid_in, gt7_tx_fsm_reset_done_out, 
  gt7_rx_fsm_reset_done_out, gt7_data_valid_in, gt0_cpllfbclklost_out, gt0_cplllock_out, 
  gt0_cplllockdetclk_in, gt0_cpllreset_in, gt0_gtrefclk0_in, gt0_gtrefclk1_in, 
  gt0_drpaddr_in, gt0_drpclk_in, gt0_drpdi_in, gt0_drpdo_out, gt0_drpen_in, gt0_drprdy_out, 
  gt0_drpwe_in, gt0_dmonitorout_out, gt0_eyescanreset_in, gt0_rxuserrdy_in, 
  gt0_eyescandataerror_out, gt0_eyescantrigger_in, gt0_rxusrclk_in, gt0_rxusrclk2_in, 
  gt0_rxdata_out, gt0_gtxrxp_in, gt0_gtxrxn_in, gt0_rxdfelpmreset_in, gt0_rxmonitorout_out, 
  gt0_rxmonitorsel_in, gt0_rxoutclk_out, gt0_rxoutclkfabric_out, gt0_gtrxreset_in, 
  gt0_rxpmareset_in, gt0_rxresetdone_out, gt0_gttxreset_in, gt0_txuserrdy_in, 
  gt0_txusrclk_in, gt0_txusrclk2_in, gt0_txdata_in, gt0_gtxtxn_out, gt0_gtxtxp_out, 
  gt0_txoutclk_out, gt0_txoutclkfabric_out, gt0_txoutclkpcs_out, gt0_txresetdone_out, 
  gt1_cpllfbclklost_out, gt1_cplllock_out, gt1_cplllockdetclk_in, gt1_cpllreset_in, 
  gt1_gtrefclk0_in, gt1_gtrefclk1_in, gt1_drpaddr_in, gt1_drpclk_in, gt1_drpdi_in, 
  gt1_drpdo_out, gt1_drpen_in, gt1_drprdy_out, gt1_drpwe_in, gt1_dmonitorout_out, 
  gt1_eyescanreset_in, gt1_rxuserrdy_in, gt1_eyescandataerror_out, gt1_eyescantrigger_in, 
  gt1_rxusrclk_in, gt1_rxusrclk2_in, gt1_rxdata_out, gt1_gtxrxp_in, gt1_gtxrxn_in, 
  gt1_rxdfelpmreset_in, gt1_rxmonitorout_out, gt1_rxmonitorsel_in, gt1_rxoutclk_out, 
  gt1_rxoutclkfabric_out, gt1_gtrxreset_in, gt1_rxpmareset_in, gt1_rxresetdone_out, 
  gt1_gttxreset_in, gt1_txuserrdy_in, gt1_txusrclk_in, gt1_txusrclk2_in, gt1_txdata_in, 
  gt1_gtxtxn_out, gt1_gtxtxp_out, gt1_txoutclk_out, gt1_txoutclkfabric_out, 
  gt1_txoutclkpcs_out, gt1_txresetdone_out, gt2_cpllfbclklost_out, gt2_cplllock_out, 
  gt2_cplllockdetclk_in, gt2_cpllreset_in, gt2_gtrefclk0_in, gt2_gtrefclk1_in, 
  gt2_drpaddr_in, gt2_drpclk_in, gt2_drpdi_in, gt2_drpdo_out, gt2_drpen_in, gt2_drprdy_out, 
  gt2_drpwe_in, gt2_dmonitorout_out, gt2_eyescanreset_in, gt2_rxuserrdy_in, 
  gt2_eyescandataerror_out, gt2_eyescantrigger_in, gt2_rxusrclk_in, gt2_rxusrclk2_in, 
  gt2_rxdata_out, gt2_gtxrxp_in, gt2_gtxrxn_in, gt2_rxdfelpmreset_in, gt2_rxmonitorout_out, 
  gt2_rxmonitorsel_in, gt2_rxoutclk_out, gt2_rxoutclkfabric_out, gt2_gtrxreset_in, 
  gt2_rxpmareset_in, gt2_rxresetdone_out, gt2_gttxreset_in, gt2_txuserrdy_in, 
  gt2_txusrclk_in, gt2_txusrclk2_in, gt2_txdata_in, gt2_gtxtxn_out, gt2_gtxtxp_out, 
  gt2_txoutclk_out, gt2_txoutclkfabric_out, gt2_txoutclkpcs_out, gt2_txresetdone_out, 
  gt3_cpllfbclklost_out, gt3_cplllock_out, gt3_cplllockdetclk_in, gt3_cpllreset_in, 
  gt3_gtrefclk0_in, gt3_gtrefclk1_in, gt3_drpaddr_in, gt3_drpclk_in, gt3_drpdi_in, 
  gt3_drpdo_out, gt3_drpen_in, gt3_drprdy_out, gt3_drpwe_in, gt3_dmonitorout_out, 
  gt3_eyescanreset_in, gt3_rxuserrdy_in, gt3_eyescandataerror_out, gt3_eyescantrigger_in, 
  gt3_rxusrclk_in, gt3_rxusrclk2_in, gt3_rxdata_out, gt3_gtxrxp_in, gt3_gtxrxn_in, 
  gt3_rxdfelpmreset_in, gt3_rxmonitorout_out, gt3_rxmonitorsel_in, gt3_rxoutclk_out, 
  gt3_rxoutclkfabric_out, gt3_gtrxreset_in, gt3_rxpmareset_in, gt3_rxresetdone_out, 
  gt3_gttxreset_in, gt3_txuserrdy_in, gt3_txusrclk_in, gt3_txusrclk2_in, gt3_txdata_in, 
  gt3_gtxtxn_out, gt3_gtxtxp_out, gt3_txoutclk_out, gt3_txoutclkfabric_out, 
  gt3_txoutclkpcs_out, gt3_txresetdone_out, gt4_cpllfbclklost_out, gt4_cplllock_out, 
  gt4_cplllockdetclk_in, gt4_cpllreset_in, gt4_gtrefclk0_in, gt4_gtrefclk1_in, 
  gt4_drpaddr_in, gt4_drpclk_in, gt4_drpdi_in, gt4_drpdo_out, gt4_drpen_in, gt4_drprdy_out, 
  gt4_drpwe_in, gt4_dmonitorout_out, gt4_eyescanreset_in, gt4_rxuserrdy_in, 
  gt4_eyescandataerror_out, gt4_eyescantrigger_in, gt4_rxusrclk_in, gt4_rxusrclk2_in, 
  gt4_rxdata_out, gt4_gtxrxp_in, gt4_gtxrxn_in, gt4_rxdfelpmreset_in, gt4_rxmonitorout_out, 
  gt4_rxmonitorsel_in, gt4_rxoutclk_out, gt4_rxoutclkfabric_out, gt4_gtrxreset_in, 
  gt4_rxpmareset_in, gt4_rxresetdone_out, gt4_gttxreset_in, gt4_txuserrdy_in, 
  gt4_txusrclk_in, gt4_txusrclk2_in, gt4_txdata_in, gt4_gtxtxn_out, gt4_gtxtxp_out, 
  gt4_txoutclk_out, gt4_txoutclkfabric_out, gt4_txoutclkpcs_out, gt4_txresetdone_out, 
  gt5_cpllfbclklost_out, gt5_cplllock_out, gt5_cplllockdetclk_in, gt5_cpllreset_in, 
  gt5_gtrefclk0_in, gt5_gtrefclk1_in, gt5_drpaddr_in, gt5_drpclk_in, gt5_drpdi_in, 
  gt5_drpdo_out, gt5_drpen_in, gt5_drprdy_out, gt5_drpwe_in, gt5_dmonitorout_out, 
  gt5_eyescanreset_in, gt5_rxuserrdy_in, gt5_eyescandataerror_out, gt5_eyescantrigger_in, 
  gt5_rxusrclk_in, gt5_rxusrclk2_in, gt5_rxdata_out, gt5_gtxrxp_in, gt5_gtxrxn_in, 
  gt5_rxdfelpmreset_in, gt5_rxmonitorout_out, gt5_rxmonitorsel_in, gt5_rxoutclk_out, 
  gt5_rxoutclkfabric_out, gt5_gtrxreset_in, gt5_rxpmareset_in, gt5_rxresetdone_out, 
  gt5_gttxreset_in, gt5_txuserrdy_in, gt5_txusrclk_in, gt5_txusrclk2_in, gt5_txdata_in, 
  gt5_gtxtxn_out, gt5_gtxtxp_out, gt5_txoutclk_out, gt5_txoutclkfabric_out, 
  gt5_txoutclkpcs_out, gt5_txresetdone_out, gt6_cpllfbclklost_out, gt6_cplllock_out, 
  gt6_cplllockdetclk_in, gt6_cpllreset_in, gt6_gtrefclk0_in, gt6_gtrefclk1_in, 
  gt6_drpaddr_in, gt6_drpclk_in, gt6_drpdi_in, gt6_drpdo_out, gt6_drpen_in, gt6_drprdy_out, 
  gt6_drpwe_in, gt6_dmonitorout_out, gt6_eyescanreset_in, gt6_rxuserrdy_in, 
  gt6_eyescandataerror_out, gt6_eyescantrigger_in, gt6_rxusrclk_in, gt6_rxusrclk2_in, 
  gt6_rxdata_out, gt6_gtxrxp_in, gt6_gtxrxn_in, gt6_rxdfelpmreset_in, gt6_rxmonitorout_out, 
  gt6_rxmonitorsel_in, gt6_rxoutclk_out, gt6_rxoutclkfabric_out, gt6_gtrxreset_in, 
  gt6_rxpmareset_in, gt6_rxresetdone_out, gt6_gttxreset_in, gt6_txuserrdy_in, 
  gt6_txusrclk_in, gt6_txusrclk2_in, gt6_txdata_in, gt6_gtxtxn_out, gt6_gtxtxp_out, 
  gt6_txoutclk_out, gt6_txoutclkfabric_out, gt6_txoutclkpcs_out, gt6_txresetdone_out, 
  gt7_cpllfbclklost_out, gt7_cplllock_out, gt7_cplllockdetclk_in, gt7_cpllreset_in, 
  gt7_gtrefclk0_in, gt7_gtrefclk1_in, gt7_drpaddr_in, gt7_drpclk_in, gt7_drpdi_in, 
  gt7_drpdo_out, gt7_drpen_in, gt7_drprdy_out, gt7_drpwe_in, gt7_dmonitorout_out, 
  gt7_eyescanreset_in, gt7_rxuserrdy_in, gt7_eyescandataerror_out, gt7_eyescantrigger_in, 
  gt7_rxusrclk_in, gt7_rxusrclk2_in, gt7_rxdata_out, gt7_gtxrxp_in, gt7_gtxrxn_in, 
  gt7_rxdfelpmreset_in, gt7_rxmonitorout_out, gt7_rxmonitorsel_in, gt7_rxoutclk_out, 
  gt7_rxoutclkfabric_out, gt7_gtrxreset_in, gt7_rxpmareset_in, gt7_rxresetdone_out, 
  gt7_gttxreset_in, gt7_txuserrdy_in, gt7_txusrclk_in, gt7_txusrclk2_in, gt7_txdata_in, 
  gt7_gtxtxn_out, gt7_gtxtxp_out, gt7_txoutclk_out, gt7_txoutclkfabric_out, 
  gt7_txoutclkpcs_out, gt7_txresetdone_out, gt0_qplloutclk_in, gt0_qplloutrefclk_in, 
  gt1_qplloutclk_in, gt1_qplloutrefclk_in)
/* synthesis syn_black_box black_box_pad_pin="soft_reset_tx_in,soft_reset_rx_in,dont_reset_on_data_error_in,gt0_tx_fsm_reset_done_out,gt0_rx_fsm_reset_done_out,gt0_data_valid_in,gt1_tx_fsm_reset_done_out,gt1_rx_fsm_reset_done_out,gt1_data_valid_in,gt2_tx_fsm_reset_done_out,gt2_rx_fsm_reset_done_out,gt2_data_valid_in,gt3_tx_fsm_reset_done_out,gt3_rx_fsm_reset_done_out,gt3_data_valid_in,gt4_tx_fsm_reset_done_out,gt4_rx_fsm_reset_done_out,gt4_data_valid_in,gt5_tx_fsm_reset_done_out,gt5_rx_fsm_reset_done_out,gt5_data_valid_in,gt6_tx_fsm_reset_done_out,gt6_rx_fsm_reset_done_out,gt6_data_valid_in,gt7_tx_fsm_reset_done_out,gt7_rx_fsm_reset_done_out,gt7_data_valid_in,gt0_cpllfbclklost_out,gt0_cplllock_out,gt0_cpllreset_in,gt0_drpaddr_in[8:0],gt0_drpdi_in[15:0],gt0_drpdo_out[15:0],gt0_drpen_in,gt0_drprdy_out,gt0_drpwe_in,gt0_dmonitorout_out[7:0],gt0_eyescanreset_in,gt0_rxuserrdy_in,gt0_eyescandataerror_out,gt0_eyescantrigger_in,gt0_rxdata_out[31:0],gt0_gtxrxp_in,gt0_gtxrxn_in,gt0_rxdfelpmreset_in,gt0_rxmonitorout_out[6:0],gt0_rxmonitorsel_in[1:0],gt0_rxoutclk_out,gt0_rxoutclkfabric_out,gt0_gtrxreset_in,gt0_rxpmareset_in,gt0_rxresetdone_out,gt0_gttxreset_in,gt0_txuserrdy_in,gt0_txdata_in[31:0],gt0_gtxtxn_out,gt0_gtxtxp_out,gt0_txoutclk_out,gt0_txoutclkfabric_out,gt0_txoutclkpcs_out,gt0_txresetdone_out,gt1_cpllfbclklost_out,gt1_cplllock_out,gt1_cpllreset_in,gt1_drpaddr_in[8:0],gt1_drpdi_in[15:0],gt1_drpdo_out[15:0],gt1_drpen_in,gt1_drprdy_out,gt1_drpwe_in,gt1_dmonitorout_out[7:0],gt1_eyescanreset_in,gt1_rxuserrdy_in,gt1_eyescandataerror_out,gt1_eyescantrigger_in,gt1_rxdata_out[31:0],gt1_gtxrxp_in,gt1_gtxrxn_in,gt1_rxdfelpmreset_in,gt1_rxmonitorout_out[6:0],gt1_rxmonitorsel_in[1:0],gt1_rxoutclk_out,gt1_rxoutclkfabric_out,gt1_gtrxreset_in,gt1_rxpmareset_in,gt1_rxresetdone_out,gt1_gttxreset_in,gt1_txuserrdy_in,gt1_txdata_in[31:0],gt1_gtxtxn_out,gt1_gtxtxp_out,gt1_txoutclk_out,gt1_txoutclkfabric_out,gt1_txoutclkpcs_out,gt1_txresetdone_out,gt2_cpllfbclklost_out,gt2_cplllock_out,gt2_cpllreset_in,gt2_drpaddr_in[8:0],gt2_drpdi_in[15:0],gt2_drpdo_out[15:0],gt2_drpen_in,gt2_drprdy_out,gt2_drpwe_in,gt2_dmonitorout_out[7:0],gt2_eyescanreset_in,gt2_rxuserrdy_in,gt2_eyescandataerror_out,gt2_eyescantrigger_in,gt2_rxdata_out[31:0],gt2_gtxrxp_in,gt2_gtxrxn_in,gt2_rxdfelpmreset_in,gt2_rxmonitorout_out[6:0],gt2_rxmonitorsel_in[1:0],gt2_rxoutclk_out,gt2_rxoutclkfabric_out,gt2_gtrxreset_in,gt2_rxpmareset_in,gt2_rxresetdone_out,gt2_gttxreset_in,gt2_txuserrdy_in,gt2_txdata_in[31:0],gt2_gtxtxn_out,gt2_gtxtxp_out,gt2_txoutclk_out,gt2_txoutclkfabric_out,gt2_txoutclkpcs_out,gt2_txresetdone_out,gt3_cpllfbclklost_out,gt3_cplllock_out,gt3_cpllreset_in,gt3_drpaddr_in[8:0],gt3_drpdi_in[15:0],gt3_drpdo_out[15:0],gt3_drpen_in,gt3_drprdy_out,gt3_drpwe_in,gt3_dmonitorout_out[7:0],gt3_eyescanreset_in,gt3_rxuserrdy_in,gt3_eyescandataerror_out,gt3_eyescantrigger_in,gt3_rxdata_out[31:0],gt3_gtxrxp_in,gt3_gtxrxn_in,gt3_rxdfelpmreset_in,gt3_rxmonitorout_out[6:0],gt3_rxmonitorsel_in[1:0],gt3_rxoutclk_out,gt3_rxoutclkfabric_out,gt3_gtrxreset_in,gt3_rxpmareset_in,gt3_rxresetdone_out,gt3_gttxreset_in,gt3_txuserrdy_in,gt3_txdata_in[31:0],gt3_gtxtxn_out,gt3_gtxtxp_out,gt3_txoutclk_out,gt3_txoutclkfabric_out,gt3_txoutclkpcs_out,gt3_txresetdone_out,gt4_cpllfbclklost_out,gt4_cplllock_out,gt4_cpllreset_in,gt4_drpaddr_in[8:0],gt4_drpdi_in[15:0],gt4_drpdo_out[15:0],gt4_drpen_in,gt4_drprdy_out,gt4_drpwe_in,gt4_dmonitorout_out[7:0],gt4_eyescanreset_in,gt4_rxuserrdy_in,gt4_eyescandataerror_out,gt4_eyescantrigger_in,gt4_rxdata_out[31:0],gt4_gtxrxp_in,gt4_gtxrxn_in,gt4_rxdfelpmreset_in,gt4_rxmonitorout_out[6:0],gt4_rxmonitorsel_in[1:0],gt4_rxoutclk_out,gt4_rxoutclkfabric_out,gt4_gtrxreset_in,gt4_rxpmareset_in,gt4_rxresetdone_out,gt4_gttxreset_in,gt4_txuserrdy_in,gt4_txdata_in[31:0],gt4_gtxtxn_out,gt4_gtxtxp_out,gt4_txoutclk_out,gt4_txoutclkfabric_out,gt4_txoutclkpcs_out,gt4_txresetdone_out,gt5_cpllfbclklost_out,gt5_cplllock_out,gt5_cpllreset_in,gt5_drpaddr_in[8:0],gt5_drpdi_in[15:0],gt5_drpdo_out[15:0],gt5_drpen_in,gt5_drprdy_out,gt5_drpwe_in,gt5_dmonitorout_out[7:0],gt5_eyescanreset_in,gt5_rxuserrdy_in,gt5_eyescandataerror_out,gt5_eyescantrigger_in,gt5_rxdata_out[31:0],gt5_gtxrxp_in,gt5_gtxrxn_in,gt5_rxdfelpmreset_in,gt5_rxmonitorout_out[6:0],gt5_rxmonitorsel_in[1:0],gt5_rxoutclk_out,gt5_rxoutclkfabric_out,gt5_gtrxreset_in,gt5_rxpmareset_in,gt5_rxresetdone_out,gt5_gttxreset_in,gt5_txuserrdy_in,gt5_txdata_in[31:0],gt5_gtxtxn_out,gt5_gtxtxp_out,gt5_txoutclk_out,gt5_txoutclkfabric_out,gt5_txoutclkpcs_out,gt5_txresetdone_out,gt6_cpllfbclklost_out,gt6_cplllock_out,gt6_cpllreset_in,gt6_drpaddr_in[8:0],gt6_drpdi_in[15:0],gt6_drpdo_out[15:0],gt6_drpen_in,gt6_drprdy_out,gt6_drpwe_in,gt6_dmonitorout_out[7:0],gt6_eyescanreset_in,gt6_rxuserrdy_in,gt6_eyescandataerror_out,gt6_eyescantrigger_in,gt6_rxdata_out[31:0],gt6_gtxrxp_in,gt6_gtxrxn_in,gt6_rxdfelpmreset_in,gt6_rxmonitorout_out[6:0],gt6_rxmonitorsel_in[1:0],gt6_rxoutclk_out,gt6_rxoutclkfabric_out,gt6_gtrxreset_in,gt6_rxpmareset_in,gt6_rxresetdone_out,gt6_gttxreset_in,gt6_txuserrdy_in,gt6_txdata_in[31:0],gt6_gtxtxn_out,gt6_gtxtxp_out,gt6_txoutclk_out,gt6_txoutclkfabric_out,gt6_txoutclkpcs_out,gt6_txresetdone_out,gt7_cpllfbclklost_out,gt7_cplllock_out,gt7_cpllreset_in,gt7_drpaddr_in[8:0],gt7_drpdi_in[15:0],gt7_drpdo_out[15:0],gt7_drpen_in,gt7_drprdy_out,gt7_drpwe_in,gt7_dmonitorout_out[7:0],gt7_eyescanreset_in,gt7_rxuserrdy_in,gt7_eyescandataerror_out,gt7_eyescantrigger_in,gt7_rxdata_out[31:0],gt7_gtxrxp_in,gt7_gtxrxn_in,gt7_rxdfelpmreset_in,gt7_rxmonitorout_out[6:0],gt7_rxmonitorsel_in[1:0],gt7_rxoutclk_out,gt7_rxoutclkfabric_out,gt7_gtrxreset_in,gt7_rxpmareset_in,gt7_rxresetdone_out,gt7_gttxreset_in,gt7_txuserrdy_in,gt7_txdata_in[31:0],gt7_gtxtxn_out,gt7_gtxtxp_out,gt7_txoutclk_out,gt7_txoutclkfabric_out,gt7_txoutclkpcs_out,gt7_txresetdone_out,gt0_qplloutrefclk_in,gt1_qplloutrefclk_in" */
/* synthesis syn_force_seq_prim="sysclk_in" */
/* synthesis syn_force_seq_prim="gt0_cplllockdetclk_in" */
/* synthesis syn_force_seq_prim="gt0_gtrefclk0_in" */
/* synthesis syn_force_seq_prim="gt0_gtrefclk1_in" */
/* synthesis syn_force_seq_prim="gt0_drpclk_in" */
/* synthesis syn_force_seq_prim="gt0_rxusrclk_in" */
/* synthesis syn_force_seq_prim="gt0_rxusrclk2_in" */
/* synthesis syn_force_seq_prim="gt0_txusrclk_in" */
/* synthesis syn_force_seq_prim="gt0_txusrclk2_in" */
/* synthesis syn_force_seq_prim="gt1_cplllockdetclk_in" */
/* synthesis syn_force_seq_prim="gt1_gtrefclk0_in" */
/* synthesis syn_force_seq_prim="gt1_gtrefclk1_in" */
/* synthesis syn_force_seq_prim="gt1_drpclk_in" */
/* synthesis syn_force_seq_prim="gt1_rxusrclk_in" */
/* synthesis syn_force_seq_prim="gt1_rxusrclk2_in" */
/* synthesis syn_force_seq_prim="gt1_txusrclk_in" */
/* synthesis syn_force_seq_prim="gt1_txusrclk2_in" */
/* synthesis syn_force_seq_prim="gt2_cplllockdetclk_in" */
/* synthesis syn_force_seq_prim="gt2_gtrefclk0_in" */
/* synthesis syn_force_seq_prim="gt2_gtrefclk1_in" */
/* synthesis syn_force_seq_prim="gt2_drpclk_in" */
/* synthesis syn_force_seq_prim="gt2_rxusrclk_in" */
/* synthesis syn_force_seq_prim="gt2_rxusrclk2_in" */
/* synthesis syn_force_seq_prim="gt2_txusrclk_in" */
/* synthesis syn_force_seq_prim="gt2_txusrclk2_in" */
/* synthesis syn_force_seq_prim="gt3_cplllockdetclk_in" */
/* synthesis syn_force_seq_prim="gt3_gtrefclk0_in" */
/* synthesis syn_force_seq_prim="gt3_gtrefclk1_in" */
/* synthesis syn_force_seq_prim="gt3_drpclk_in" */
/* synthesis syn_force_seq_prim="gt3_rxusrclk_in" */
/* synthesis syn_force_seq_prim="gt3_rxusrclk2_in" */
/* synthesis syn_force_seq_prim="gt3_txusrclk_in" */
/* synthesis syn_force_seq_prim="gt3_txusrclk2_in" */
/* synthesis syn_force_seq_prim="gt4_cplllockdetclk_in" */
/* synthesis syn_force_seq_prim="gt4_gtrefclk0_in" */
/* synthesis syn_force_seq_prim="gt4_gtrefclk1_in" */
/* synthesis syn_force_seq_prim="gt4_drpclk_in" */
/* synthesis syn_force_seq_prim="gt4_rxusrclk_in" */
/* synthesis syn_force_seq_prim="gt4_rxusrclk2_in" */
/* synthesis syn_force_seq_prim="gt4_txusrclk_in" */
/* synthesis syn_force_seq_prim="gt4_txusrclk2_in" */
/* synthesis syn_force_seq_prim="gt5_cplllockdetclk_in" */
/* synthesis syn_force_seq_prim="gt5_gtrefclk0_in" */
/* synthesis syn_force_seq_prim="gt5_gtrefclk1_in" */
/* synthesis syn_force_seq_prim="gt5_drpclk_in" */
/* synthesis syn_force_seq_prim="gt5_rxusrclk_in" */
/* synthesis syn_force_seq_prim="gt5_rxusrclk2_in" */
/* synthesis syn_force_seq_prim="gt5_txusrclk_in" */
/* synthesis syn_force_seq_prim="gt5_txusrclk2_in" */
/* synthesis syn_force_seq_prim="gt6_cplllockdetclk_in" */
/* synthesis syn_force_seq_prim="gt6_gtrefclk0_in" */
/* synthesis syn_force_seq_prim="gt6_gtrefclk1_in" */
/* synthesis syn_force_seq_prim="gt6_drpclk_in" */
/* synthesis syn_force_seq_prim="gt6_rxusrclk_in" */
/* synthesis syn_force_seq_prim="gt6_rxusrclk2_in" */
/* synthesis syn_force_seq_prim="gt6_txusrclk_in" */
/* synthesis syn_force_seq_prim="gt6_txusrclk2_in" */
/* synthesis syn_force_seq_prim="gt7_cplllockdetclk_in" */
/* synthesis syn_force_seq_prim="gt7_gtrefclk0_in" */
/* synthesis syn_force_seq_prim="gt7_gtrefclk1_in" */
/* synthesis syn_force_seq_prim="gt7_drpclk_in" */
/* synthesis syn_force_seq_prim="gt7_rxusrclk_in" */
/* synthesis syn_force_seq_prim="gt7_rxusrclk2_in" */
/* synthesis syn_force_seq_prim="gt7_txusrclk_in" */
/* synthesis syn_force_seq_prim="gt7_txusrclk2_in" */
/* synthesis syn_force_seq_prim="gt0_qplloutclk_in" */
/* synthesis syn_force_seq_prim="gt1_qplloutclk_in" */;
  input sysclk_in /* synthesis syn_isclock = 1 */;
  input soft_reset_tx_in;
  input soft_reset_rx_in;
  input dont_reset_on_data_error_in;
  output gt0_tx_fsm_reset_done_out;
  output gt0_rx_fsm_reset_done_out;
  input gt0_data_valid_in;
  output gt1_tx_fsm_reset_done_out;
  output gt1_rx_fsm_reset_done_out;
  input gt1_data_valid_in;
  output gt2_tx_fsm_reset_done_out;
  output gt2_rx_fsm_reset_done_out;
  input gt2_data_valid_in;
  output gt3_tx_fsm_reset_done_out;
  output gt3_rx_fsm_reset_done_out;
  input gt3_data_valid_in;
  output gt4_tx_fsm_reset_done_out;
  output gt4_rx_fsm_reset_done_out;
  input gt4_data_valid_in;
  output gt5_tx_fsm_reset_done_out;
  output gt5_rx_fsm_reset_done_out;
  input gt5_data_valid_in;
  output gt6_tx_fsm_reset_done_out;
  output gt6_rx_fsm_reset_done_out;
  input gt6_data_valid_in;
  output gt7_tx_fsm_reset_done_out;
  output gt7_rx_fsm_reset_done_out;
  input gt7_data_valid_in;
  output gt0_cpllfbclklost_out;
  output gt0_cplllock_out;
  input gt0_cplllockdetclk_in /* synthesis syn_isclock = 1 */;
  input gt0_cpllreset_in;
  input gt0_gtrefclk0_in /* synthesis syn_isclock = 1 */;
  input gt0_gtrefclk1_in /* synthesis syn_isclock = 1 */;
  input [8:0]gt0_drpaddr_in;
  input gt0_drpclk_in /* synthesis syn_isclock = 1 */;
  input [15:0]gt0_drpdi_in;
  output [15:0]gt0_drpdo_out;
  input gt0_drpen_in;
  output gt0_drprdy_out;
  input gt0_drpwe_in;
  output [7:0]gt0_dmonitorout_out;
  input gt0_eyescanreset_in;
  input gt0_rxuserrdy_in;
  output gt0_eyescandataerror_out;
  input gt0_eyescantrigger_in;
  input gt0_rxusrclk_in /* synthesis syn_isclock = 1 */;
  input gt0_rxusrclk2_in /* synthesis syn_isclock = 1 */;
  output [31:0]gt0_rxdata_out;
  input gt0_gtxrxp_in;
  input gt0_gtxrxn_in;
  input gt0_rxdfelpmreset_in;
  output [6:0]gt0_rxmonitorout_out;
  input [1:0]gt0_rxmonitorsel_in;
  output gt0_rxoutclk_out;
  output gt0_rxoutclkfabric_out;
  input gt0_gtrxreset_in;
  input gt0_rxpmareset_in;
  output gt0_rxresetdone_out;
  input gt0_gttxreset_in;
  input gt0_txuserrdy_in;
  input gt0_txusrclk_in /* synthesis syn_isclock = 1 */;
  input gt0_txusrclk2_in /* synthesis syn_isclock = 1 */;
  input [31:0]gt0_txdata_in;
  output gt0_gtxtxn_out;
  output gt0_gtxtxp_out;
  output gt0_txoutclk_out;
  output gt0_txoutclkfabric_out;
  output gt0_txoutclkpcs_out;
  output gt0_txresetdone_out;
  output gt1_cpllfbclklost_out;
  output gt1_cplllock_out;
  input gt1_cplllockdetclk_in /* synthesis syn_isclock = 1 */;
  input gt1_cpllreset_in;
  input gt1_gtrefclk0_in /* synthesis syn_isclock = 1 */;
  input gt1_gtrefclk1_in /* synthesis syn_isclock = 1 */;
  input [8:0]gt1_drpaddr_in;
  input gt1_drpclk_in /* synthesis syn_isclock = 1 */;
  input [15:0]gt1_drpdi_in;
  output [15:0]gt1_drpdo_out;
  input gt1_drpen_in;
  output gt1_drprdy_out;
  input gt1_drpwe_in;
  output [7:0]gt1_dmonitorout_out;
  input gt1_eyescanreset_in;
  input gt1_rxuserrdy_in;
  output gt1_eyescandataerror_out;
  input gt1_eyescantrigger_in;
  input gt1_rxusrclk_in /* synthesis syn_isclock = 1 */;
  input gt1_rxusrclk2_in /* synthesis syn_isclock = 1 */;
  output [31:0]gt1_rxdata_out;
  input gt1_gtxrxp_in;
  input gt1_gtxrxn_in;
  input gt1_rxdfelpmreset_in;
  output [6:0]gt1_rxmonitorout_out;
  input [1:0]gt1_rxmonitorsel_in;
  output gt1_rxoutclk_out;
  output gt1_rxoutclkfabric_out;
  input gt1_gtrxreset_in;
  input gt1_rxpmareset_in;
  output gt1_rxresetdone_out;
  input gt1_gttxreset_in;
  input gt1_txuserrdy_in;
  input gt1_txusrclk_in /* synthesis syn_isclock = 1 */;
  input gt1_txusrclk2_in /* synthesis syn_isclock = 1 */;
  input [31:0]gt1_txdata_in;
  output gt1_gtxtxn_out;
  output gt1_gtxtxp_out;
  output gt1_txoutclk_out;
  output gt1_txoutclkfabric_out;
  output gt1_txoutclkpcs_out;
  output gt1_txresetdone_out;
  output gt2_cpllfbclklost_out;
  output gt2_cplllock_out;
  input gt2_cplllockdetclk_in /* synthesis syn_isclock = 1 */;
  input gt2_cpllreset_in;
  input gt2_gtrefclk0_in /* synthesis syn_isclock = 1 */;
  input gt2_gtrefclk1_in /* synthesis syn_isclock = 1 */;
  input [8:0]gt2_drpaddr_in;
  input gt2_drpclk_in /* synthesis syn_isclock = 1 */;
  input [15:0]gt2_drpdi_in;
  output [15:0]gt2_drpdo_out;
  input gt2_drpen_in;
  output gt2_drprdy_out;
  input gt2_drpwe_in;
  output [7:0]gt2_dmonitorout_out;
  input gt2_eyescanreset_in;
  input gt2_rxuserrdy_in;
  output gt2_eyescandataerror_out;
  input gt2_eyescantrigger_in;
  input gt2_rxusrclk_in /* synthesis syn_isclock = 1 */;
  input gt2_rxusrclk2_in /* synthesis syn_isclock = 1 */;
  output [31:0]gt2_rxdata_out;
  input gt2_gtxrxp_in;
  input gt2_gtxrxn_in;
  input gt2_rxdfelpmreset_in;
  output [6:0]gt2_rxmonitorout_out;
  input [1:0]gt2_rxmonitorsel_in;
  output gt2_rxoutclk_out;
  output gt2_rxoutclkfabric_out;
  input gt2_gtrxreset_in;
  input gt2_rxpmareset_in;
  output gt2_rxresetdone_out;
  input gt2_gttxreset_in;
  input gt2_txuserrdy_in;
  input gt2_txusrclk_in /* synthesis syn_isclock = 1 */;
  input gt2_txusrclk2_in /* synthesis syn_isclock = 1 */;
  input [31:0]gt2_txdata_in;
  output gt2_gtxtxn_out;
  output gt2_gtxtxp_out;
  output gt2_txoutclk_out;
  output gt2_txoutclkfabric_out;
  output gt2_txoutclkpcs_out;
  output gt2_txresetdone_out;
  output gt3_cpllfbclklost_out;
  output gt3_cplllock_out;
  input gt3_cplllockdetclk_in /* synthesis syn_isclock = 1 */;
  input gt3_cpllreset_in;
  input gt3_gtrefclk0_in /* synthesis syn_isclock = 1 */;
  input gt3_gtrefclk1_in /* synthesis syn_isclock = 1 */;
  input [8:0]gt3_drpaddr_in;
  input gt3_drpclk_in /* synthesis syn_isclock = 1 */;
  input [15:0]gt3_drpdi_in;
  output [15:0]gt3_drpdo_out;
  input gt3_drpen_in;
  output gt3_drprdy_out;
  input gt3_drpwe_in;
  output [7:0]gt3_dmonitorout_out;
  input gt3_eyescanreset_in;
  input gt3_rxuserrdy_in;
  output gt3_eyescandataerror_out;
  input gt3_eyescantrigger_in;
  input gt3_rxusrclk_in /* synthesis syn_isclock = 1 */;
  input gt3_rxusrclk2_in /* synthesis syn_isclock = 1 */;
  output [31:0]gt3_rxdata_out;
  input gt3_gtxrxp_in;
  input gt3_gtxrxn_in;
  input gt3_rxdfelpmreset_in;
  output [6:0]gt3_rxmonitorout_out;
  input [1:0]gt3_rxmonitorsel_in;
  output gt3_rxoutclk_out;
  output gt3_rxoutclkfabric_out;
  input gt3_gtrxreset_in;
  input gt3_rxpmareset_in;
  output gt3_rxresetdone_out;
  input gt3_gttxreset_in;
  input gt3_txuserrdy_in;
  input gt3_txusrclk_in /* synthesis syn_isclock = 1 */;
  input gt3_txusrclk2_in /* synthesis syn_isclock = 1 */;
  input [31:0]gt3_txdata_in;
  output gt3_gtxtxn_out;
  output gt3_gtxtxp_out;
  output gt3_txoutclk_out;
  output gt3_txoutclkfabric_out;
  output gt3_txoutclkpcs_out;
  output gt3_txresetdone_out;
  output gt4_cpllfbclklost_out;
  output gt4_cplllock_out;
  input gt4_cplllockdetclk_in /* synthesis syn_isclock = 1 */;
  input gt4_cpllreset_in;
  input gt4_gtrefclk0_in /* synthesis syn_isclock = 1 */;
  input gt4_gtrefclk1_in /* synthesis syn_isclock = 1 */;
  input [8:0]gt4_drpaddr_in;
  input gt4_drpclk_in /* synthesis syn_isclock = 1 */;
  input [15:0]gt4_drpdi_in;
  output [15:0]gt4_drpdo_out;
  input gt4_drpen_in;
  output gt4_drprdy_out;
  input gt4_drpwe_in;
  output [7:0]gt4_dmonitorout_out;
  input gt4_eyescanreset_in;
  input gt4_rxuserrdy_in;
  output gt4_eyescandataerror_out;
  input gt4_eyescantrigger_in;
  input gt4_rxusrclk_in /* synthesis syn_isclock = 1 */;
  input gt4_rxusrclk2_in /* synthesis syn_isclock = 1 */;
  output [31:0]gt4_rxdata_out;
  input gt4_gtxrxp_in;
  input gt4_gtxrxn_in;
  input gt4_rxdfelpmreset_in;
  output [6:0]gt4_rxmonitorout_out;
  input [1:0]gt4_rxmonitorsel_in;
  output gt4_rxoutclk_out;
  output gt4_rxoutclkfabric_out;
  input gt4_gtrxreset_in;
  input gt4_rxpmareset_in;
  output gt4_rxresetdone_out;
  input gt4_gttxreset_in;
  input gt4_txuserrdy_in;
  input gt4_txusrclk_in /* synthesis syn_isclock = 1 */;
  input gt4_txusrclk2_in /* synthesis syn_isclock = 1 */;
  input [31:0]gt4_txdata_in;
  output gt4_gtxtxn_out;
  output gt4_gtxtxp_out;
  output gt4_txoutclk_out;
  output gt4_txoutclkfabric_out;
  output gt4_txoutclkpcs_out;
  output gt4_txresetdone_out;
  output gt5_cpllfbclklost_out;
  output gt5_cplllock_out;
  input gt5_cplllockdetclk_in /* synthesis syn_isclock = 1 */;
  input gt5_cpllreset_in;
  input gt5_gtrefclk0_in /* synthesis syn_isclock = 1 */;
  input gt5_gtrefclk1_in /* synthesis syn_isclock = 1 */;
  input [8:0]gt5_drpaddr_in;
  input gt5_drpclk_in /* synthesis syn_isclock = 1 */;
  input [15:0]gt5_drpdi_in;
  output [15:0]gt5_drpdo_out;
  input gt5_drpen_in;
  output gt5_drprdy_out;
  input gt5_drpwe_in;
  output [7:0]gt5_dmonitorout_out;
  input gt5_eyescanreset_in;
  input gt5_rxuserrdy_in;
  output gt5_eyescandataerror_out;
  input gt5_eyescantrigger_in;
  input gt5_rxusrclk_in /* synthesis syn_isclock = 1 */;
  input gt5_rxusrclk2_in /* synthesis syn_isclock = 1 */;
  output [31:0]gt5_rxdata_out;
  input gt5_gtxrxp_in;
  input gt5_gtxrxn_in;
  input gt5_rxdfelpmreset_in;
  output [6:0]gt5_rxmonitorout_out;
  input [1:0]gt5_rxmonitorsel_in;
  output gt5_rxoutclk_out;
  output gt5_rxoutclkfabric_out;
  input gt5_gtrxreset_in;
  input gt5_rxpmareset_in;
  output gt5_rxresetdone_out;
  input gt5_gttxreset_in;
  input gt5_txuserrdy_in;
  input gt5_txusrclk_in /* synthesis syn_isclock = 1 */;
  input gt5_txusrclk2_in /* synthesis syn_isclock = 1 */;
  input [31:0]gt5_txdata_in;
  output gt5_gtxtxn_out;
  output gt5_gtxtxp_out;
  output gt5_txoutclk_out;
  output gt5_txoutclkfabric_out;
  output gt5_txoutclkpcs_out;
  output gt5_txresetdone_out;
  output gt6_cpllfbclklost_out;
  output gt6_cplllock_out;
  input gt6_cplllockdetclk_in /* synthesis syn_isclock = 1 */;
  input gt6_cpllreset_in;
  input gt6_gtrefclk0_in /* synthesis syn_isclock = 1 */;
  input gt6_gtrefclk1_in /* synthesis syn_isclock = 1 */;
  input [8:0]gt6_drpaddr_in;
  input gt6_drpclk_in /* synthesis syn_isclock = 1 */;
  input [15:0]gt6_drpdi_in;
  output [15:0]gt6_drpdo_out;
  input gt6_drpen_in;
  output gt6_drprdy_out;
  input gt6_drpwe_in;
  output [7:0]gt6_dmonitorout_out;
  input gt6_eyescanreset_in;
  input gt6_rxuserrdy_in;
  output gt6_eyescandataerror_out;
  input gt6_eyescantrigger_in;
  input gt6_rxusrclk_in /* synthesis syn_isclock = 1 */;
  input gt6_rxusrclk2_in /* synthesis syn_isclock = 1 */;
  output [31:0]gt6_rxdata_out;
  input gt6_gtxrxp_in;
  input gt6_gtxrxn_in;
  input gt6_rxdfelpmreset_in;
  output [6:0]gt6_rxmonitorout_out;
  input [1:0]gt6_rxmonitorsel_in;
  output gt6_rxoutclk_out;
  output gt6_rxoutclkfabric_out;
  input gt6_gtrxreset_in;
  input gt6_rxpmareset_in;
  output gt6_rxresetdone_out;
  input gt6_gttxreset_in;
  input gt6_txuserrdy_in;
  input gt6_txusrclk_in /* synthesis syn_isclock = 1 */;
  input gt6_txusrclk2_in /* synthesis syn_isclock = 1 */;
  input [31:0]gt6_txdata_in;
  output gt6_gtxtxn_out;
  output gt6_gtxtxp_out;
  output gt6_txoutclk_out;
  output gt6_txoutclkfabric_out;
  output gt6_txoutclkpcs_out;
  output gt6_txresetdone_out;
  output gt7_cpllfbclklost_out;
  output gt7_cplllock_out;
  input gt7_cplllockdetclk_in /* synthesis syn_isclock = 1 */;
  input gt7_cpllreset_in;
  input gt7_gtrefclk0_in /* synthesis syn_isclock = 1 */;
  input gt7_gtrefclk1_in /* synthesis syn_isclock = 1 */;
  input [8:0]gt7_drpaddr_in;
  input gt7_drpclk_in /* synthesis syn_isclock = 1 */;
  input [15:0]gt7_drpdi_in;
  output [15:0]gt7_drpdo_out;
  input gt7_drpen_in;
  output gt7_drprdy_out;
  input gt7_drpwe_in;
  output [7:0]gt7_dmonitorout_out;
  input gt7_eyescanreset_in;
  input gt7_rxuserrdy_in;
  output gt7_eyescandataerror_out;
  input gt7_eyescantrigger_in;
  input gt7_rxusrclk_in /* synthesis syn_isclock = 1 */;
  input gt7_rxusrclk2_in /* synthesis syn_isclock = 1 */;
  output [31:0]gt7_rxdata_out;
  input gt7_gtxrxp_in;
  input gt7_gtxrxn_in;
  input gt7_rxdfelpmreset_in;
  output [6:0]gt7_rxmonitorout_out;
  input [1:0]gt7_rxmonitorsel_in;
  output gt7_rxoutclk_out;
  output gt7_rxoutclkfabric_out;
  input gt7_gtrxreset_in;
  input gt7_rxpmareset_in;
  output gt7_rxresetdone_out;
  input gt7_gttxreset_in;
  input gt7_txuserrdy_in;
  input gt7_txusrclk_in /* synthesis syn_isclock = 1 */;
  input gt7_txusrclk2_in /* synthesis syn_isclock = 1 */;
  input [31:0]gt7_txdata_in;
  output gt7_gtxtxn_out;
  output gt7_gtxtxp_out;
  output gt7_txoutclk_out;
  output gt7_txoutclkfabric_out;
  output gt7_txoutclkpcs_out;
  output gt7_txresetdone_out;
  input gt0_qplloutclk_in /* synthesis syn_isclock = 1 */;
  input gt0_qplloutrefclk_in;
  input gt1_qplloutclk_in /* synthesis syn_isclock = 1 */;
  input gt1_qplloutrefclk_in;
endmodule
