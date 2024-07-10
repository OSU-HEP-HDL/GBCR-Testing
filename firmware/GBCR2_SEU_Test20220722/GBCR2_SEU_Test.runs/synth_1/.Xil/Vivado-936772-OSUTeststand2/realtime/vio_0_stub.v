// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2024.1" *)
module vio_0(clk, probe_in0, probe_in1, probe_in2, probe_out0);
  input clk /* synthesis syn_isclock = 1 */;
  input [255:0]probe_in0;
  input [255:0]probe_in1;
  input [63:0]probe_in2;
  output [2:0]probe_out0;
endmodule
