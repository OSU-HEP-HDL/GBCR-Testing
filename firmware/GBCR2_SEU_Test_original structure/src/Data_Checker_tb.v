`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SMU
// Engineer: Wei Zhang
// 
// Create Date: 10/23/2020 03:49:30 PM
// Design Name: Data_Checker_tb
// Module Name: Data_Checker_tb
// Project Name: GBCR2_SEU
// Target Devices: KC705 FPGA Evaluation
// Tool Versions: Vivado 2018.2
// Description: Check the received PRBS31 data stream is correct or not
// 
// Dependencies: 
// 
// Revision:
// Revision 0.02 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//data check for 6 Rx channel and 1 Tx channel

module Data_Checker_tb;

// wire reset;
// wire sys_clk;
// wire clk_20MHz;
// wire clk_50MHz;
// wire clk_100MHz;
// wire clk_160MHz;
// wire clk_200MHz;
// global_clock_reset global_clock_reset_inst(
    // .SYS_CLK_P(SYS_CLK_P),
    // .SYS_CLK_N(SYS_CLK_N),
    // .FORCE_RST(SYS_RST),
    
    // .GLOBAL_RST(reset),
    // .SYS_CLK(sys_clk),
    // .CLK_OUT1(clk_25MHz),
    // .CLK_OUT2(clk_50MHz),
    // .CLK_OUT3(clk_100MHz),
    // .CLK_OUT4(clk_160MHz),
    // .CLK_OUT5(clk_200MHz)
  // );    
  
reg clk_200MHz;
reg clk_160MHz;
reg clk_40MHz;
reg reset;

wire [16*8-1:0] Rx_injectErrorCount;

wire [32*8-1:0] tx_data_gen;
Data_Source Data_Source_Inst(
   .Tx_clk({8{clk_40MHz}}),
   .reset(reset),
   .enableInj(8'HFF),
   .Rx_injectErrorCount(Rx_injectErrorCount),
   .Tx_data(tx_data_gen)
);

reg pulse;
//assign pulse = pulse_reg[1]; //still right?

wire Data_Input;
wire Data_Out;

assign Data_Input = Data_Out;
wire [31:0] fifo_data_out;
wire empty;
wire rd_en = ~empty;
Data_Checker Data_Checker_Inst
(
   .Rx_clk({8{clk_40MHz}}),
   .Tx_clk(clk_160MHz),
   .CLK200M(clk_200MHz),
   .reset(reset),
   .pulse(pulse),
   .Rx_injectErrorCount(Rx_injectErrorCount),
   .Rx_DataIn(tx_data_gen),
   .Tx_Data_Input(Data_Input),
   .Tx_Data_Out(Data_Out),
   .fifo_rd_clk(clk_40MHz),
   .fifo_dout(fifo_data_out),
   .fifo_empty(empty),
   .fifo_rd_en(rd_en)
);

initial begin
	clk_200MHz = 1'b0;
	clk_160MHz = 1'b0;
	clk_40MHz = 1'b0;
	reset = 1'b0;
	pulse = 1'b0;
	
	#25 reset = 1'b1;
	#250 reset = 1'b0;
	#200 pulse = 1'b1;
	#250 pulse = 1'b0;
	
	#10000 pulse = 1'b0;
	#20000 pulse = 1'b0;
	
end
always 
	begin
		#2.5 clk_200MHz = !clk_200MHz;
	end
always 
	begin
		#12.5 clk_40MHz = !clk_40MHz;
	end
always 
	begin
		#3.125 clk_160MHz = !clk_160MHz;
	end
endmodule
