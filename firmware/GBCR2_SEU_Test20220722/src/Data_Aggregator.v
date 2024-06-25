`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Southern Methodist University
// Engineer: Datao Gong and Wei Zhang
// 
// Create Date: Tue Dec 2 10:03:34 CST 2021
// Design Name: Data_Aggregator
// Module Name: Data_Aggregator
// Project Name: GBCR2_SEE_Test
// Target Devices: KC705
// Tool Versions: Vivado 2018.3
// Description: 7 Rx channels and 1 Tx channel
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created

// 
//////////////////////////////////////////////////////////////////////////////////

module Data_Aggregator(
    input wire [7:0] Rx_WrClk,                  // Rx channel write clock 
    input wire Tx_WrClk,                        // Tx channel write clock, 160 MHz
    input wire CLK200M,                         // 200 MHz clock, read buffer clock
    input wire rst,                             // reset, high active
    input wire [128*2*8-1:0] RX_Data,             // 8 Rx channel data input data
    input wire [127+128:0] TX_Data,                 // Tx channel data input data
    input wire [127:0] TX_Data_trig,
    input wire [125:0] RX_ShortErrorCount,
    input wire fifo_rd_clk,
    output wire [31:0] Out_Data,                // output fifo data
    output wire empty,                          // output fifo empty
    input  wire rd_en                           // output fifo read enable
);

reg [63:0] previousTXErrorCount;
//wire TX_Error_Count_Change = previousTXErrorCount != TX_Data[63:0];

wire TX_Error_Count_Change =previousTXErrorCount != TX_Data_trig[63:0];
always @(posedge Tx_WrClk ) 
begin
    if(rst)
    begin
        previousTXErrorCount <= 64'H3579357935793579; //initial with a large number
       
    end
    else
    begin
        if(TX_Error_Count_Change)
        begin
            previousTXErrorCount <= TX_Data_trig[63:0];
        end
    end
end

//buffers control signals
wire [127+128:0] buffer_din[8:0];
wire [8:0] buffer_wr_en;
wire [8:0] buffer_rd_en;
wire [127+128:0] buffer_dout[8:0];
wire [8:0] buffer_full;
wire [8:0] buffer_empty;
wire [8:0] buffer_wrclk;

//buffer write operation
genvar i;
generate
for(i=0;i<8;i=i+1)
begin
    assign buffer_din[i]    = RX_Data[i*(128*2)+127+128:i*128*2];
    assign buffer_wr_en[i]  = RX_Data[i*128*2+127+128];
    assign buffer_wrclk[i]  = Rx_WrClk[i];
end
endgenerate

//assign buffer_din[8] = {1'b1,4'd8,59'd0,TX_Data[63:0]};
assign buffer_din[8] =TX_Data;
assign buffer_wr_en[8] = TX_Error_Count_Change;
//assign buffer_wr_en[8] =TX_Data[127];
//assign buffer_din[7] = {1'b1,3'd7,60'd0,64'd0};
//assign buffer_wr_en[7] = 1'b0;

assign buffer_wrclk[8] = Tx_WrClk;


genvar j;
generate
for(j=0;j<9;j=j+1)
begin 
    fifo_128to128_depth1k fifo_128to128_depth1k_inst(
        .rst(rst),                              // fifo reset
        .wr_clk(buffer_wrclk[j]),                     // fifo write clock, same a data checker
        .rd_clk(CLK200M),                      // input wire rd_clk
        .din(buffer_din[j]),                             // input wire [127 : 0] din
        .wr_en(buffer_wr_en[j]),                         // input wire wr_en
        .rd_en(buffer_rd_en[j]),                         // input wire rd_en
        .dout(buffer_dout[j]),                           // output wire [31 : 0] dout
        .full(buffer_full[j]),                           // output wire full
        .empty(buffer_empty[j]),                         // output wire empty
        .wr_rst_busy(),             // output wire wr_rst_busy
        .rd_rst_busy()              // output wire rd_rst_busy
    );   
end
endgenerate

//buffer read and put into output buffer

//-------------------------------------------------------------------> Data aggregator
reg [127+128:0]din;                                    // 8 channels data in, data width 128
wire [31:0]dout;                                    // data out, width = 32 bit, connect to ethernet fifo
reg wr_en;                                         // fifo write enable
wire full;                                          // fifo full
//reg [7:0] buffer_empty_reg;
wire [15:0] rd_data_count;

assign buffer_rd_en = ~buffer_empty[0] ? 8'H01 : 
					  (~buffer_empty[1] ? 8'H02 :
					  (~buffer_empty[2] ? 8'H04 :
					  (~buffer_empty[3] ? 8'H08 :
					  (~buffer_empty[4] ? 8'H10 :
					  (~buffer_empty[5] ? 8'H20 :
					  (~buffer_empty[6] ? 8'H40 :
					  (~buffer_empty[7] ? 8'H80 : 
					  (~buffer_empty[8] ? 9'H100 :9'H000))))))));
		

assign Out_Data = dout;        
//reg [15:0] count;                     
always @(posedge CLK200M)
begin
    if(rst)
    begin
        wr_en           <= 1'b0;
//        count           <= 16'd0;
    end
    else
    begin
//        count <= count + 1;
		din <= 	   ~buffer_empty[0] ? buffer_dout[0] : 
				  (~buffer_empty[1] ? buffer_dout[1] :
				  (~buffer_empty[2] ? buffer_dout[2] :
				  (~buffer_empty[3] ? buffer_dout[3] :
				  (~buffer_empty[4] ? buffer_dout[4] :
				  (~buffer_empty[5] ? buffer_dout[5] :
				  (~buffer_empty[6] ? buffer_dout[6] : 
				  (~buffer_empty[7] ? buffer_dout[7] : 
				  (~buffer_empty[8] ? buffer_dout[8] :{32'H3C5C7C5C,64'd0,32'H12344321,32'H7d6d_7a5a,64'd0,32'H5566_6655}))))))));
				 // (~buffer_empty[7] ? buffer_dout[7] : {2'b00,RX_ShortErrorCount})))))));
		wr_en <= ~(&buffer_empty)|(rd_data_count <=16'd16);
        // wr_en <= 1'b1;
        // din   <= {112'd0,count};
    end
end

// always @(*)                                         // 
// begin
//     case(cnt)
//     3'b000: begin din = rx_dout[0]; wr_en = !rx_empty[0];   end
//     3'b001: begin din = rx_dout[1]; wr_en = !rx_empty[1];   end
//     3'b010: begin din = rx_dout[2]; wr_en = !rx_empty[2];   end
//     3'b011: begin din = rx_dout[3]; wr_en = !rx_empty[3];   end
//     3'b100: begin din = rx_dout[4]; wr_en = !rx_empty[4];   end
//     3'b101: begin din = rx_dout[5]; wr_en = !rx_empty[5];   end
//     3'b110: begin din = rx_dout[6]; wr_en = !rx_empty[6];   end
//     3'b111: begin din = tx_dout;    wr_en = !tx_empty;      end
//     default: begin din = rx_dout[0];    end
// end

//wire [127:0] outbuf_din;

wire wr_rst_busy;
wire rd_rst_busy;
fifo_128to32_depth16k fifo_128to32_depth16k_inst(
        .rst(rst),                                  // fifo reset
        .wr_clk(CLK200M),                           // fifo write clock, 
        .rd_clk(fifo_rd_clk),                           // input wire rd_clk
        .din(din),                                  // input wire [31 : 0] din
        .wr_en(wr_en),                              // input wire wr_en
        .rd_en(rd_en),                              // input wire rd_en
        .dout(dout),                                // output wire [31 : 0] dout
        .full(full),                                // output wire full
        .empty(empty),                              // output wire empty
        .rd_data_count(rd_data_count),
        .wr_rst_busy(wr_rst_busy),                       // output wire wr_rst_busy
        .rd_rst_busy(rd_rst_busy)                        // output wire rd_rst_busy
    ); 
//-------------------------------------------------------------------< Data aggregator

//ila_256 ila_256_inst(
//.clk(CLK200M),
//.probe0(din)//
//);
endmodule