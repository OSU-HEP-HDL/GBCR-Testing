`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: dbw
// 
// Create Date: 2022/04/10 17:44:55
// Design Name: 
// Module Name: PRBS7Gen8b
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


module PRBS7Gen8b(
    input clk160,
    input reset,
    input enableInj,
    output [15:0] errorInj,
    output [31:0] random
    );

reg [29:0] counter = 30'h0000000; 
reg [15:0] errorInjReg = 16'd0; 
reg [7:0] prbs = 8'hfe;
wire [7:0] gprbs;
assign gprbs[7:1]=prbs[7:1]^prbs[6:0];
assign gprbs[0]=prbs[0]^gprbs[7];
wire injection;

assign injection = (counter == 30'H010A0A0A);
//assign injection = (counter[7:0] == 6'd53); //choose a number for test
reg [7:0] prbs_o=8'hfe;
reg [31:0] prbs7_r32=32'b0;
reg [1:0] cnt=2'b11;
always @(posedge clk160)
begin
    if(reset)
    begin
        counter <= 30'h0000000;   
        errorInjReg <= 16'd0; 
        prbs     <= 32'hffffffff;
        prbs7_r32<=32'b0;
    end
    else 
    begin
        if(enableInj)
        begin
            counter = counter + 1;
            if(injection)
            begin
                errorInjReg = errorInjReg + 1;            
            end
        end
        prbs[7:1]<=prbs[7:1]^prbs[6:0];
        prbs[0]<=prbs[0]^gprbs[7];
        prbs_o[7:0]<={prbs[7:1],(injection&enableInj)^prbs[0]};//20220410 dbw modify
        cnt<=cnt-1'b1;
        prbs7_r32<={prbs_o[7:0],prbs7_r32[31:8]};//LSB
    end
end
    assign errorInj = errorInjReg;
    assign random=(cnt==2'b00)?prbs7_r32:random;
  
endmodule
