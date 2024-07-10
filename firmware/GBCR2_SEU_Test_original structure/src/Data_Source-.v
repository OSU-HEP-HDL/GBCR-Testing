`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SMU
// Engineer: Wei Zhang
// 
// Create Date: 10/23/2020 03:49:30 PM
// Design Name: Data_Source
// Module Name: Data_Source
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

module Data_Source(
input [6:0] Tx_clk,
input reset,
input [6:0] enableInj,
output [16*7-1:0] Rx_injectErrorCount,
output [32*7-1:0] Tx_data          //data for 7 gtx
);

wire [31:0] tx_random[6:0];
genvar i;
generate
for(i=0;i<7;i=i+1)
begin: loop_tx_ch
    PRBS31Gen32b PRBS31Gen32b_inst(
    .enableInj(enableInj[i]),
    .reset(reset),
    .errorInj(Rx_injectErrorCount[16*i+15:16*i]),
    .clk(Tx_clk[i]),
    .random(tx_random[i])
    );
end
endgenerate

wire [31:0] txdata0;
wire [31:0] txdata1;
wire [31:0] txdata2;
wire [31:0] txdata3;
wire [31:0] txdata4;
wire [31:0] txdata5;
wire [31:0] txdata6;

genvar j;
generate 
    for(j=0;j<32;j=j+1) begin
        assign txdata0[j] = tx_random[0][31-j];
        assign txdata1[j] = tx_random[1][31-j]; 
        assign txdata2[j] = tx_random[2][31-j];
        assign txdata3[j] = tx_random[3][31-j];
        assign txdata4[j] = tx_random[4][31-j]; 
        assign txdata5[j] = tx_random[5][31-j];
        assign txdata6[j] = tx_random[6][31-j]; 
    end
endgenerate

assign Tx_data = {txdata6,txdata5,txdata4,txdata3,txdata2,txdata1,txdata0};

endmodule
