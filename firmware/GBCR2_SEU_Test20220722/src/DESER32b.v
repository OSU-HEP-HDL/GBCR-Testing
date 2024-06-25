`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2020 02:42:17 PM
// Design Name: 
// Module Name: DESER32b
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DESER32b(
input CLKBit,
input RSTn,
input DataIn,
output [31:0] DataOut
    );
    
reg [4:0] counter;
reg [31:0] Out_reg;
always@(negedge RSTn or posedge CLKBit) 
begin
    if(!RSTn)		
        counter[4:0] <= 5'b11111;
    else 
        counter[4:0] <= counter[4:0] - 5'b00001;
end
assign DataOut = (counter == 5'b00000)?Out_reg:DataOut;
always@(negedge RSTn or posedge CLKBit) 
begin
    if(!RSTn)		
        Out_reg <= 32'd0;
    else 
        Out_reg <= {Out_reg[30:0], DataIn};
end
endmodule
