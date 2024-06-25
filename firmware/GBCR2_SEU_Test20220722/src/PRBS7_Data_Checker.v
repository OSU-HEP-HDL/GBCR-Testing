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


module PRBS7_Data_Checker(
input clock,        //Data check clock
input [31:0] DataIn,
output [31:0] Bit_Error
    );
reg [63:0] Data_reg=64'b0;
//---------------------------------------------> Data_In storage
always @(posedge clock)
begin
    Data_reg <= {Data_reg[31:0], DataIn};
end
//---------------------------------------------< Data_In storage
//wire [31:0] Bit_Error;
genvar i;
generate
    for(i=0;i<32;i=i+1)
    begin
       assign Bit_Error[31-i] = (Data_reg[38-i]^Data_reg[37-i] == Data_reg[31-i])?0:1;
//       assign Bit_Error[31-i] = (Data_reg[63-i]^Data_reg[60-i] == Data_reg[32-i])?0:1;
    end
endgenerate
//---------------------------------------------> Count '1' number
//reg [5:0] count;
//always @(posedge clock)
//begin
//    case(Bit_Error)
//    32'h0000_0000 : count <= 5'd0;
    
//end
//---------------------------------------------> Count '1' number
endmodule
