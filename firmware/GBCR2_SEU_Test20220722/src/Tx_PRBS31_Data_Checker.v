`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SMU
// Engineer: Wei Zhang
// 
// Create Date: 10/23/2020 03:49:30 PM
// Design Name: PRBS31 Data Checker
// Module Name: PRBS31_Data_Checker
// Project Name: GBCR2_SEU
// Target Devices: KC705 FPGA Evaluation
// Tool Versions: Vivado 2018.2
// Description: Check the received PRBS31 data stream is correct or not
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// X[0] = X[30] ^ X[27]
// 
//////////////////////////////////////////////////////////////////////////////////


module Tx_PRBS31_Data_Checker(
input clock,        //Data check clock
input reset,
input pulse,
input [31:0] DataIn,
output [63:0] Error_bit_Count
    );
reg [63:0] Data_reg=64'd0;
//---------------------------------------------> Data_In storage
always @(posedge clock)
begin
   if(reset | pulse)
		Data_reg <= 64'd0;
	else
		Data_reg <= {Data_reg[31:0], DataIn};
end
//---------------------------------------------< Data_In storage
wire [31:0] Bit_Error;
genvar i;
generate
    for(i=0;i<32;i=i+1)
    begin
       assign Bit_Error[31-i] = (Data_reg[62-i]^Data_reg[59-i] == Data_reg[31-i])?0:1;
    end
endgenerate
//---------------------------------------------> Count "1" 
wire [5:0] count;
assign count = Bit_Error[0] + Bit_Error[1] + Bit_Error[2] + Bit_Error[3] + 
               Bit_Error[4] + Bit_Error[5] + Bit_Error[6] + Bit_Error[7] +
               Bit_Error[8] + Bit_Error[9] + Bit_Error[10] + Bit_Error[11] +
               Bit_Error[12] + Bit_Error[13] + Bit_Error[14] + Bit_Error[15] +
               Bit_Error[16] + Bit_Error[17] + Bit_Error[18] + Bit_Error[19] +
               Bit_Error[20] + Bit_Error[21] + Bit_Error[22] + Bit_Error[23] +
               Bit_Error[24] + Bit_Error[25] + Bit_Error[26] + Bit_Error[27] +
               Bit_Error[28] + Bit_Error[29] + Bit_Error[30] + Bit_Error[31];
//---------------------------------------------< Count "1" 

//---------------------------------------------> calculate total "1"
reg [63:0] Error_bit_Count_reg;
assign Error_bit_Count = Error_bit_Count_reg;
always @(posedge clock or posedge pulse)
begin
    if(pulse)                                   // software clear
        Error_bit_Count_reg = 64'd0;
    else if(reset)                              // hardware clear via CPU RST Button
        Error_bit_Count_reg = 64'd0;
    else
        Error_bit_Count_reg <= Error_bit_Count_reg + count;
end
//---------------------------------------------< calculate total "1"
endmodule
