`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SMU
// Engineer: Wei Zhang
// 
// Create Date: 10/23/2020 03:49:30 PM
// Design Name: Data_Checker
// Module Name: Data_Checker
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

module Data_Checker(
input [7:0] Rx_clk,
input Tx_clk,        
input CLK200M,    //system clock for operation
input reset,
input pulse,        // clear Error_bit_Count
input [16*8-1:0] Rx_injectErrorCount,
input [32*8-1:0] Rx_DataIn,
input  Tx_Data_Input,
output  Tx_Data_Out,
input  fifo_rd_clk,
output [31:0] fifo_dout,
output  fifo_empty,
input   fifo_rd_en
//output probe
);

//wire probeP;
//wire probeTx;
//assign probe= probeP| probeTx;

wire [31:0] rx_din[7:0];
wire [15:0] rx_inject_count[7:0];
wire [3:0] rx_channel[7:0];
wire [(128+128)*8-1:0] Rx_Check_Data; //for aggregator
wire [17:0] shortErrorCount[7:0];
genvar i;
generate
for(i=0;i<8;i=i+1)
begin: loop_rx_ch

        assign rx_channel[i]        = i;
        assign rx_din[i]            = Rx_DataIn[i*32+31:i*32];
        assign rx_inject_count[i]   = Rx_injectErrorCount[i*16+15:i*16];
  if (i!=3)// 20220409 dbw
    begin
        //PRBS31_Data_Checker PRBS31_Data_Checker_Rxinst0
        PRBS31_Seed_Checker PRBS31_Seed_Checker_Rxinst0
        (
            .clock(Rx_clk[i]),            // Data check clock
            .reset(reset),
            .pulse(pulse),
            .channel(rx_channel[i]),
            .injectErrorCount(rx_inject_count[i]),
            .DataIn(rx_din[i]),              // 32-bit data
            .shortErrorCount(shortErrorCount[i]),
            .dataOut(Rx_Check_Data[(128*2)*i+(127+128):(128*2)*i]) //check data
        );
    end
end
endgenerate

// 20220409 dbw add PCIE4 x0Y3 PRBS7 160Mbps check
// input: Rx_clk[3]
// input: reset
// input: [2:0] rx_channel[3];
// input: [31:0] rx_din[3];
// input: [15:0] rx_inject_count[3];
//output: [17:0] shortErrorCount[3];
// output:  Rx_Check_Data[128*3+127:128*3];

wire [31:0] prbs7dataerr;
wire [15:0] data16;
wire [15:0] seed;
wire [15:0] seeds;
wire [2:0] state;
wire [3:0] cnt;
dataPrbs7Check dataPrbs7Check_inst(
    .clk(Rx_clk[3]),
    .reset(reset),
    .data(rx_din[3]),
    .pulse(pulse),
    .channel(rx_channel[3]),
    .injectErrorCount(rx_inject_count[3]),
    .shortErrorCount(shortErrorCount[3]),
    .dataOut(Rx_Check_Data[(128+128)*3+127+128:(128+128)*3]), //check data
    /// wave debug
    .prbs7DataERROR(prbs7dataerr),
    .data16(data16),
    .seed(seed),
   // .state(state),
    .cnt(cnt),
    .seeds(seeds)
    //.probe(probeP)
    );

//ila_1 ila_1_inst (
//.clk(Rx_clk[3]),
//.probe0(32'b0),// reserved 20220409
//.probe1(gt3_rxdata_i),
//.probe2(prbs7dataerr),
//.probe3(data16),
//.probe4(seed),
//.probe5(state),
//.probe6({cnt[3:1],reset}),
//.probe7(seeds)

//);
/////////////////////////////////pcie4 checker end  20220409////////////////////////////////


wire [63:0] Tx0_Error_bit_Count;
wire [127+128:0]Tx0_Rx_Check_Data;
Data_generator_160M Data_generator_160M(
    .clock(Tx_clk),                // 160M clock signal
    .reset(reset),                // system reset signal
    .pulse(pulse),
    .DataOut(Tx_Data_Out),
    .DataIn(Tx_Data_Input),
    .Error_bit_Count(Tx0_Error_bit_Count),
    .channel(4'h8),
    .shortErrorCount(),// 20220413 infact,the parameter is ignored.
    .dataOut(Tx0_Rx_Check_Data)
   // .probeTx(probeTx)
);

wire [125:0] RX_ShortErrorCount;
assign RX_ShortErrorCount = { shortErrorCount[6],shortErrorCount[5],shortErrorCount[4],
                              shortErrorCount[3],shortErrorCount[2],shortErrorCount[1],
                              shortErrorCount[0] };
Data_Aggregator data_aggregator_inst
(
    .Rx_WrClk(Rx_clk),
    .Tx_WrClk(Tx_clk),
    .CLK200M(CLK200M),
    .rst(reset),
    .RX_Data(Rx_Check_Data),
    .TX_Data(Tx0_Rx_Check_Data),
    .TX_Data_trig({64'd0,Tx0_Error_bit_Count}),
    .RX_ShortErrorCount(RX_ShortErrorCount),
    .fifo_rd_clk(fifo_rd_clk),
    .Out_Data(fifo_dout),
    .empty(fifo_empty),
    .rd_en(fifo_rd_en)
);

endmodule
