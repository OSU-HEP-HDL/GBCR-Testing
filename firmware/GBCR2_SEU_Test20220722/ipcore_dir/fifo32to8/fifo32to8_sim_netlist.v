// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Wed Jun 26 18:34:51 2024
// Host        : OSUTeststand2 running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/fifo32to8/fifo32to8_sim_netlist.v
// Design      : fifo32to8
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo32to8,fifo_generator_v13_2_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_10,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module fifo32to8
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [31:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [31:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
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
  wire NLW_U0_prog_full_UNCONNECTED;
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
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
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
  (* C_DIN_WIDTH = "32" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "253" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "252" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
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
  fifo32to8_fifo_generator_v13_2_10 U0
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo32to8_xpm_cdc_gray
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
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo32to8_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

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
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
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
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
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
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
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
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo32to8_xpm_cdc_single
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
module fifo32to8_xpm_cdc_single__2
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
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module fifo32to8_xpm_cdc_sync_rst
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
module fifo32to8_xpm_cdc_sync_rst__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 115392)
`pragma protect data_block
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
ji48GmRyrGV7KBzVJpwEl10xQMYOlYm3
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
