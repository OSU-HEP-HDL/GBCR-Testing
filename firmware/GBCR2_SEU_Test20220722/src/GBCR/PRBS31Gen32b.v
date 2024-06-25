`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/01 08:45:33
// Design Name: 
// Module Name: genrandom
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

module PRBS31Gen32b(
    input clk,
    input enableInj,
    output [11:0] errorInj,
    output reg[31:0] random=32'hffffffff
);
reg [29:0] counter = 30'h0000000;
reg [11:0] errorInj = 12'h000;
reg [31:0]prbs=32'hffffffff;
wire [31:0] gprbs;
assign gprbs[31:4]=prbs[30:3]^prbs[27:0];
assign gprbs[3:0]={prbs[2:0],gprbs[31]}^gprbs[31:28];
wire injection;

assign injection = (counter == 30'H010A0A0A);
always @(posedge clk)
begin
    if(enableInj)
    begin
        counter = counter + 1;
        if(injection)
        begin
            errorInj = errorInj + 1;            
        end
    end
	prbs[31:4]<=prbs[30:3]^prbs[27:0];
	prbs[3:0]<={prbs[2:0],gprbs[31]}^gprbs[31:28]^{3'b000,injection&enableInj};
	random[31:0]<=prbs;
end
    
endmodule
