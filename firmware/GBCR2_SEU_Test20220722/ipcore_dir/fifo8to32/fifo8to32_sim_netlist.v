// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Wed Jun 26 18:34:51 2024
// Host        : OSUTeststand2 running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/ipcore_dir/fifo8to32/fifo8to32_sim_netlist.v
// Design      : fifo8to32
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo8to32,fifo_generator_v13_2_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_10,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module fifo8to32
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
  fifo8to32_fifo_generator_v13_2_10 U0
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo8to32_xpm_cdc_gray
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
module fifo8to32_xpm_cdc_gray__parameterized1
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

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo8to32_xpm_cdc_single
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
module fifo8to32_xpm_cdc_single__2
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
module fifo8to32_xpm_cdc_sync_rst
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
module fifo8to32_xpm_cdc_sync_rst__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 118496)
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
