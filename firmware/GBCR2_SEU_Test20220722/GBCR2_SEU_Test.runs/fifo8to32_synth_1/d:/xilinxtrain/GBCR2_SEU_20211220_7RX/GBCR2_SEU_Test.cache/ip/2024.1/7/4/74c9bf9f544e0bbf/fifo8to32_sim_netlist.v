// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Wed Jun 26 18:34:50 2024
// Host        : OSUTeststand2 running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo8to32_sim_netlist.v
// Design      : fifo8to32
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo8to32,fifo_generator_v13_2_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_10,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    prog_full,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output prog_full;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [7:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire prog_full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [7:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [7:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "8" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "32" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "kintex7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "61" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "60" *) 
  (* C_PROG_FULL_TYPE = "1" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "64" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "6" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "8" *) 
  (* C_WR_DEPTH = "256" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "8" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_10 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[7:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(prog_full),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[7:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [7:0]src_in_bin;
  input dest_clk;
  output [7:0]dest_out_bin;

  wire [7:0]async_path;
  wire [6:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[1] ;
  wire [7:0]dest_out_bin;
  wire [6:0]gray_enc;
  wire src_clk;
  wire [7:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[2]),
        .I2(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[2]),
        .O(binval[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .I5(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[7]),
        .Q(async_path[7]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "6" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [5:0]src_in_bin;
  input dest_clk;
  output [5:0]dest_out_bin;

  wire [5:0]async_path;
  wire [4:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[1] ;
  wire [5:0]dest_out_bin;
  wire [4:0]gray_enc;
  wire src_clk;
  wire [5:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .I5(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [4]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[5]),
        .Q(async_path[5]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RSqbsRZSIb+QlYJMfFv1T7uHQ7PiCEXQkl687MHGm2LgPB15GIYcPmqKUSXgtkLsIFes91PTAyyB
9H9cyY4ZUxedcRg/9ZOB5pm3zPqAbcvGPmg1ivMhr/MlS19t5lYKM2tQo+0Yd+arJXlVZu2BMnvn
+I3G9t9tJuWUIWKjI+I=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VRSQ05ZaB6bIhFIQ823mTvlJaG9+5iW5C3+KxGjq0sq9ziCshKOLpOGPDMmOWDqA4uBaxC5IKISr
w8+A8mqbYjXo5m1g8sGjNaETS0HKJsK+l5Y++tN4IEUs+DwxgrPR/+LWtChuOzVkfC7BG3LVUEMj
zM3GAyGcXGJ3sdBItZAfsevyiy7kr4Fw+nk2hWytGteu1NZk3VzPE7KQHLkOlHBPXf6P0j8LpKcr
2oNDgQ/WaEmg6OOvFeJuaWDaee8Sn6wKP/caMyoGdSeczsPtRrJeoSRlbNHlxhCv7zg+Cn2AgwrR
PTqGsMrkhv9U0sq+waS0CmwChsk4WB7RspGYUg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tNziOjCznlvIl4dadmB9r23Duf+HQHWOuHmupEU3PJxrazHVtZdNKspG9sRXhF9mjbpnSiKYCdFK
Jr9W/dxUid36faFIPKQazVTuOiE0hkzVQAGpYxXjT/ITB/9EFBvgvP5L3EAhHv32x6MA1vkFSI7x
HrZ09YNFEF6T7DPTZE4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QCYfxgkUHlX1cre1q9aS3sVDIOX36YBK4ZwJXAVUwA6f1OQ77XibjpWJHt5FK9F0PcYp/j21pqzO
BRdkDcFLVAjxER4J5t5iMVhoeMk+3fpiKfYrm4WFl1ygsJsfFJP0jqO1OkjC8iFBtm3n6b7CTl1o
cjBbcBp8UgW6E8rf5inXA0dRqybnyxKJSnMFYLinvpVU6QEc4OKO7mi/i/s9p/efiP+CdQf0yDRU
Fw7o7x0D7tjBv943g5L+4wGZ2JYU+ISqn4Ajxy/bWTTJDe6T/15evhngS61MC8Xjamzc4YLZBP8o
ShfSLoeZeO+Hk5n3xzJRghM0DQ6Sj7NqXFY68w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uy8FDDy3dZQGAnMQV0HBesEs+/oZdaq35Kj1PGhy9J/+EBZm0nhhQgYtku8tWABW2jKAC1GtNTvo
uReQyr1hteMxTbD5OIuqv86eb1hXZVENlZ7ichG8auUjkeHAkaSYNbHOuDLIhSqHEL67XbcZ9zPG
1JOY3+VONSww0KYPcQbGSo/2DaC5C0Y+mZODRfJ4+b0WXjce6UaJetilBc3VtqqmodIM2d3HDawF
R0xVJfHj86rXmUkY+SNUw60zsV6raCY6G3k/rXpei1d6zn8tCThkKG5fwiWY8zA7kRdTFIlVKP9h
fb6kfzRBRT/BgVQ8d4RgEcEVV8m3u/Mf4KIlTw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pk1GeRlkUK9lt6DVXYVdtOABlzDEWQDcBsP/p+Wo5HaglDLG5b8gk08xTP3IcJ1RKcfuARPMGO2s
/VqFbnVADV90T1rhjIuWMcBnzYQK/ALUvwv11Uju9Gn0fvPIz52l3QBnpjHI1nlsFB7WeqkzVfHZ
tg9gO9bPHjHLjVd9BzH6McrEWY5RkZ0UBy0Fmh/SownJX1b0YGE7LdwKydEMEpyvb28bwTOwfEv/
4RtsfYtEvTjo6e1ZBm66D9IQmKUu32wzTfn5bFZHdyjZg6+HcTzvHMtQX2+AggXfP6FsO2/83qkb
0bfj226fnLhr32dJxtsaJS5OR63GYtzDJ05ITA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LCfWqKmUoUSVOTKNAl5p8n1hfz7SMU2kDOUMBjsDncgSFqiu2zUy1I6GSDrVnF/2umJG5/mWcpvi
rQaFJOlrJ8DNctSuavdlopRAwTMsVi6dAlNGrAawSiDIxtI3tN3MDVdMiH5H+pJMqMt59yXneyCf
2RRSRz2sUQK/aj0lXlqKjVJzVbk8HaBQ8akBJF4iWSMK4foIzJ6iO1EupYovuW6uEiO7jQRWezlW
pbbDenOHHWbfinuX5cbkjpTKHGsEKct65q+ZXJp60m3sconSK3Y2eLQxusuJ1FHDJ4GGKO8mEzCv
3cfGdXX3pVL81OfGO/JD1aMs9H98CO5ssbHqlw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A4S1e3DHcTeWzaDVuWDRb3Yf1BjiEsR1RtAeL0BJ7J/oPWMNj96MeGsUiHtZoiYqteTZxqax2cyZ
PV0cMLoBK4Ya8CyM+BTnkFA2ablsGt5Es4TgG/nFS9VEhmeKxu8boAsqW5697aiqOATJf/LucQh5
GOnPXHAuPrDj0A/fu8N2QduqGyysWUSc1KsoJ0/0noJYvLJ2yOhFi4uIUYQfG5LOuOrca5P43pqA
iwUKW/RrFXal2acJdFeXIKffZpKanSV97urdzKyBvf9EPV/M8g9uPFJJ1z6aS+FbknhVPs0pt6eD
+J/qib4gVp/HGnRo4YlxauUMv6Yv9wxiaObY6ttDfYf5p3uzWZMlf3i7YOzZwcd4aS/6+vkD28LG
L9piBIpLx2dvQy74RdvCVdvaP1LC6RMju9RfuXJhuX4ZAmDxRi0zQyRda838ikzwYeOCSKLIvRPb
nuJ8Zx2ot8EFqSeGaaRFaEMU6Zf5SptCUuVMHvSkinBewcwrLB5uiJTJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gj+uMxV+tK4Di7pgSOE82FOBeWmUB1A7OKFOSMUW3qrmQ4/YhryfHMlWPxfAq8avQL7tnBTnRFEg
czbErdIcNzYjrM7Qq00QC/mTqmeQX4/apbqGvN+rwK4RR5oj22wfTib/UQNEQX6fbpi6PtmAeUR9
eShsfq+YWcf7z2Zw4Q+o4+E6m4/3CzU68vglNpzNsJ8S9/8XpdIrvAA/WRAX6OEOC4wlNIKDZsq/
+zMbFgSzN1rP844I/CDmxYM0NIzBWWhYBkPfJyQyigmUoXb84lDip0/Dmnq4EHvu7D/tZNnDl5st
JpftRfEpT6S8e/5MBeKUuhbfg6etHo/oFZvPKQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aWTy3xv6SqKsldtLS2gY4KrTS8U+KtFNRHS314f6EYZy1MHE9t7oICJ8eNB8up8A+odoE23N3fJb
1alhaadeRWU2GjlIiK1LjZ5PQw+jb1u1GWtRiY+TcTlD75XUlqwykVBrCDfm565DmgZjZle9T3/t
WEfLo+m/8GfBe8trVnoftsk/XI00BMFXRzw8doPGDhNECS1NUrLebryb9iO5Hf4A/40dtslTARsR
nicN0KoIIyiQ+QzliqyXU/8VjS45inON8R0Kv9Qx46EXUp7bds5uQ7QycRhpLG0IPnMIweudU67w
eQmpHJzvZKBCZks/R0OafZx44H6Jib2+QazBCw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UGdPiChIPj1lSozqzCQx17Bi+8FWSuMUMzXUkDLH5zcP1t8tZLzh4CU4WAR8lmJxn8gH763fLp5c
RYU6zA0yxHzl2ksc5YRU1XEfQQT9ha8fQnz+18wVKcsa5UIOfMbGDwnS9yfX59ntG8CB0uF8bJKE
y1CS6U/1Stfs1w2mF94iDxI2n2GJlb1UPtWpmxMBI88hY0GktTPXP2Y7JKl8zRl/Lq0wIF8pHwXk
B4nOgKm6hfzPj0xZ6E/TuER/JE3fy8RSm24IlL/CUgpReEslEOYjQ4EKKZRG9/fxg26utQWW9p+G
fWVU53qrFGzBhKQ96Paj1ROkv6hDHyUb6n7uSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 119104)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
