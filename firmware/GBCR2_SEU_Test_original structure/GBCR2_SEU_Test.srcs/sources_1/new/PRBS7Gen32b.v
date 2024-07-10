`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: dbw
// 
// Create Date: 2022/04/09 20:25:26
// Design Name: 
// Module Name: PRBS7Gen32b
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


module PRBS7Gen32b(
    input clk,
    input reset,
    input enableInj,
    output [15:0] errorInj,
    output [31:0] random
    );
    
reg [29:0] counter = 30'h0000000; 
reg [15:0] errorInjReg = 15'd0; 
reg [126:0] prbs71=//LSB 127'b1111_1110_1010_1001_1001_1101_1101_0010_1100_0110_111101101011011001001000111000010111110010101110011010001001111000101000011000001000000;// PRBS created from right to left, b0^b1==b7
                   127'b000000100000110000101000111100100010110011101010011111010000111000100100110110101101111_0110_0011_0100_1011_1011_1001_1001_0101_0111_1111;
wire injection;

//assign injection = (counter == 30'H010A0A0A);
assign injection = (counter[26:0] == 27'H10A0A0A);
//assign injection = (counter[7:0] == 6'd53); //choose a number for test
reg [31:0] txdata3_r; 
always @(posedge clk)
begin
    if(reset)
    begin
        counter <= 30'h0000000;   
        errorInjReg <= 16'd0; 
        prbs71<=127'b1111_1110_1010_1001_1001_1101_1101_0010_1100_0110_111101101011011001001000111000010111110010101110011010001001111000101000011000001000000;// PRBS created from right to left, b0^b1==b7

    end
    else 
    begin
 	   prbs71[126:0]<={ prbs71[94:0],prbs71[126:95]};//MSB
	   txdata3_r[31:0]<= prbs71[126:95];//MSB
       if(enableInj)
        begin
            counter = counter + 1;
            if(injection)// inject 1bit error 20220408
            begin
                errorInjReg = errorInjReg + 1;    
                txdata3_r[31:0]<= {prbs71[126:96],~prbs71[95]};
             end
        end
    
    end
end
    assign errorInj = errorInjReg;
    assign random=txdata3_r;    
endmodule
