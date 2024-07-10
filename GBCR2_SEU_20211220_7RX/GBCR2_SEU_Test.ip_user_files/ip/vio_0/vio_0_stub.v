// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Wed Jun 26 18:37:37 2024
// Host        : OSUTeststand2 running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/hep/Desktop/GBCR_Work/firmware/GBCR2_SEU_Test20220722/GBCR2_SEU_Test.gen/sources_1/ip/vio_0/vio_0_stub.v
// Design      : vio_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2024.1" *)
module vio_0(clk, probe_in0, probe_in1, probe_in2, probe_out0)
/* synthesis syn_black_box black_box_pad_pin="probe_in0[255:0],probe_in1[255:0],probe_in2[63:0],probe_out0[2:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input [255:0]probe_in0;
  input [255:0]probe_in1;
  input [63:0]probe_in2;
  output [2:0]probe_out0;
endmodule
