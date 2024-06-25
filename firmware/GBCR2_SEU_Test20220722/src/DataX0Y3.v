`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/17 18:00:09
// Design Name: 
// Module Name: DataX0Y3
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


module DataX0Y3(
    input tx_clk,
    input reset,
    input enableInj,
    output [15:0] errorInj,
    output [31:0] txdata3
    );
reg [29:0] counter = 30'h0000000; 
wire injection;
reg [15:0] errorInjReg = 16'd0; 
assign injection = (counter == 30'H010A0A0A);
//assign injection = (counter[7:0] == 6'd53); //choose a number for test
    
// 2022 add  pcie4 x0y3  prbs7  oversample mode
reg [126:0] prbs71=127'b1111_1110_1010_1001_1001_1101_1101_0010_1100_0110_111101101011011001001000111000010111110010101110011010001001111000101000011000001000000;// PRBS created from right to left, b0^b1==b7
reg [31:0] txdata3_r; 
	always @(posedge tx_clk)
	begin
    if(reset)
    begin
        counter <= 30'h0000000;   
        errorInjReg <= 16'd0; 
        prbs71=127'b1111_1110_1010_1001_1001_1101_1101_0010_1100_0110_111101101011011001001000111000010111110010101110011010001001111000101000011000001000000;// PRBS created from right to left, b0^b1==b7

    end
    else
    begin
		 prbs71[126:0]<={ prbs71[3:0],prbs71[126:4]};
		 txdata3_r[31:0]<= {{prbs71[3],prbs71[3],prbs71[3],prbs71[3],prbs71[3],prbs71[3],prbs71[3],prbs71[3]},
		                       {prbs71[2],prbs71[2],prbs71[2],prbs71[2],prbs71[2],prbs71[2],prbs71[2],prbs71[2]},
		                       {prbs71[1],prbs71[1],prbs71[1],prbs71[1],prbs71[1],prbs71[1],prbs71[1],prbs71[1]},
		                       {prbs71[0],prbs71[0],prbs71[0],prbs71[0],prbs71[0],prbs71[0],prbs71[0],prbs71[0]}};
       if(enableInj)
        begin
            counter = counter + 1;
            if(injection)// inject 1bit error 20220408
            begin
                errorInjReg = errorInjReg + 1;    
                txdata3_r[31:0]<= {{prbs71[3],prbs71[3],prbs71[3],prbs71[3],prbs71[3],prbs71[3],prbs71[3],prbs71[3]},
		                       {prbs71[2],prbs71[2],prbs71[2],prbs71[2],prbs71[2],prbs71[2],prbs71[2],prbs71[2]},
		                       {prbs71[1],prbs71[1],prbs71[1],prbs71[1],prbs71[1],prbs71[1],prbs71[1],prbs71[1]},
		                       {~prbs71[0],~prbs71[0],~prbs71[0],~prbs71[0],~prbs71[0],~prbs71[0],~prbs71[0],~prbs71[0]}};
             end
        end
     end
	end
   assign txdata3=txdata3_r;
   assign errorInj = errorInjReg;
   
endmodule
