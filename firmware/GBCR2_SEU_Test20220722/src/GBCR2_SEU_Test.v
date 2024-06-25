`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Southern Methodist University
// Engineer: Wei Zhang
// 
// Create Date: 11/08/2020 04:12:00 PM
// Design Name: GBCR2_SEU_Test
// Module Name: GBCR2_SEU_Test
// Project Name: GBCR2_SER_Test_7RX
// Target Devices: KC705
// Tool Versions: Vivado 2018.2
// Description: This firmware is used to test GBCR2 SEU/SEE.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.02 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module GBCR2_SEU_Test(
//---------------------< system clock and reset
input wire SYS_RST,              //system reset
input wire SYS_CLK_P,            //system clock 200MHz
input wire SYS_CLK_N,
input wire SGMIICLK_Q0_P,        //125MHz for GTP/GTH/GTX  for 1G Ethernet interface
input wire SGMIICLK_Q0_N,
//----------------------< LED        
output wire [7:0] LED8Bit,        //clock output
//----------------------< DIPSw4Bit
input wire [3:0] DIPSw4Bit,
//----------------------> Gigbit eth interface (RGMII)
output wire PHY_RESET_N,
output wire [3:0] RGMII_TXD,
output wire RGMII_TX_CTL,
output wire RGMII_TXC,
input wire [3:0] RGMII_RXD,
input wire RGMII_RX_CTL,
input wire RGMII_RXC,
inout wire MDIO,
output wire MDC,
//---------------------< GTX for Rx channel
input wire Q0_CLK1_GTREFCLK_PAD_N_IN,
input wire Q0_CLK1_GTREFCLK_PAD_P_IN,
input wire [6:0] RXN_IN,
input wire [6:0] RXP_IN,
output wire [6:0] TXN_OUT,
output wire [6:0] TXP_OUT,
//---------------------< Tx
output Data_OUTP,               // USER_SMA_CLOCK
output Data_OUTN,
input Data_INP,                 // USER_SMA_GPIO
input Data_INN,
//---------------------< IIC interface
inout wire SDA,
output wire SCL
);
//---------------------------------------------------------< global_clock_reset
wire reset;
wire sys_clk;
wire clk_20MHz;
wire clk_50MHz;
wire clk_100MHz;
wire clk_160MHz;
wire clk_200MHz;
wire control_clk;

global_clock_reset global_clock_reset_inst(
    .SYS_CLK_P(SYS_CLK_P),
    .SYS_CLK_N(SYS_CLK_N),
    .FORCE_RST(SYS_RST),
    // output
    .GLOBAL_RST(reset),
    .SYS_CLK(sys_clk),
    .CLK_OUT1(clk_25MHz),
    .CLK_OUT2(clk_50MHz),
    .CLK_OUT3(clk_100MHz),
    .CLK_OUT4(clk_160MHz),
    .CLK_OUT5(clk_200MHz)
  );    
//---------------------------------------------------------> global_clock_reset

//---------------------------------------------------------< generate sgmii_i clock
wire clk_sgmii_i;
wire clk_sgmii;
wire clk_125MHz;
IBUFDS_GTE2 #(
   .CLKCM_CFG("TRUE"),          // Refer to Transceiver User Guide
   .CLKRCV_TRST("TRUE"),        // Refer to Transceiver User Guide
   .CLKSWING_CFG(2'b11)         // Refer to Transceiver User Guide
)
IBUFDS_GTE2_inst (
   .O(clk_sgmii_i),             // 1-bit output: Refer to Transceiver User Guide
   .ODIV2("open"),              // 1-bit output: Refer to Transceiver User Guide
   .CEB(1'b0),                  // 1-bit input: Refer to Transceiver User Guide
   .I(SGMIICLK_Q0_P),           // 1-bit input: Refer to Transceiver User Guide
   .IB(SGMIICLK_Q0_N)           // 1-bit input: Refer to Transceiver User Guide
);

BUFG BUFG_inst (
   .O(clk_sgmii),               // 1-bit output: Clock output
   .I(clk_sgmii_i)              // 1-bit input: Clock input
);
assign clk_125MHz = clk_sgmii;
//---------------------------------------------------------> generate sgmii_i clock

//---------------------------------------------------------< gig_eth 
wire [47:0]gig_eth_mac_addr;
wire [31:0]gig_eth_ipv4_addr;
wire [31:0]gig_eth_subnet_mask;
wire [31:0]gig_eth_gateway_ip_addr; 
wire [7:0]gig_eth_tx_tdata;
wire gig_eth_tx_tvalid;
wire gig_eth_tx_tready;
wire [7:0]gig_eth_rx_tdata;
wire gig_eth_rx_tvalid;
wire gig_eth_rx_tready;
wire gig_eth_tcp_use_fifo;
wire gig_eth_tx_fifo_wrclk;
wire [31:0]gig_eth_tx_fifo_q;
wire gig_eth_tx_fifo_wren;
wire gig_eth_tx_fifo_full;
wire gig_eth_rx_fifo_rdclk;
wire [31:0]gig_eth_rx_fifo_q;
wire gig_eth_rx_fifo_rden;
wire gig_eth_rx_fifo_empty;

assign gig_eth_mac_addr = {44'h000a3502a75,DIPSw4Bit[3:0]};
assign gig_eth_ipv4_addr = {28'hc0a8020,DIPSw4Bit[3:0]};
assign gig_eth_subnet_mask = 32'hffffff00;
assign gig_eth_gateway_ip_addr = 32'hc0a80201;
//assign gpio_high = 2'b11;
gig_eth gig_eth_inst
(
// asynchronous reset
   .GLBL_RST(reset),
// clocks
   .GTX_CLK(clk_125MHz),
   .REF_CLK(sys_clk),                           // 200MHz for IODELAY
// PHY interface
   .PHY_RESETN(PHY_RESET_N),
//         -- RGMII Interface
   .RGMII_TXD(RGMII_TXD),
   .RGMII_TX_CTL(RGMII_TX_CTL),
   .RGMII_TXC(RGMII_TXC),
   .RGMII_RXD(RGMII_RXD),
   .RGMII_RX_CTL(RGMII_RX_CTL),
   .RGMII_RXC(RGMII_RXC),
// MDIO Interface
   .MDIO(MDIO),
   .MDC(MDC),
// TCP
   .MAC_ADDR(gig_eth_mac_addr),
   .IPv4_ADDR(gig_eth_ipv4_addr),
   .IPv6_ADDR(128'h0),
   .SUBNET_MASK(gig_eth_subnet_mask),
   .GATEWAY_IP_ADDR(gig_eth_gateway_ip_addr),
   .TCP_CONNECTION_RESET(1'b0),
   .TX_TDATA(gig_eth_tx_tdata),
   .TX_TVALID(gig_eth_tx_tvalid),
   .TX_TREADY(gig_eth_tx_tready),
   .RX_TDATA(gig_eth_rx_tdata),
   .RX_TVALID(gig_eth_rx_tvalid),
   .RX_TREADY(gig_eth_rx_tready),
//fifo8to32 and fifo32to8
   .TCP_USE_FIFO(gig_eth_tcp_use_fifo),
   .TX_FIFO_WRCLK(gig_eth_tx_fifo_wrclk),
   .TX_FIFO_Q(gig_eth_tx_fifo_q),
   .TX_FIFO_WREN(gig_eth_tx_fifo_wren),
   .TX_FIFO_FULL(gig_eth_tx_fifo_full),
   .RX_FIFO_RDCLK(gig_eth_rx_fifo_rdclk),
   .RX_FIFO_Q(gig_eth_rx_fifo_q),
   .RX_FIFO_RDEN(gig_eth_rx_fifo_rden),
   .RX_FIFO_EMPTY(gig_eth_rx_fifo_empty)
);
assign gig_eth_tcp_use_fifo = 1'b1;
assign gig_eth_rx_fifo_rdclk = control_clk;
//---------------------------------------------------------> gig_eth
//---------------------------------------------------------< control_interface
wire [35:0]control_fifo_q;
wire control_fifo_empty;
wire control_fifo_rdreq;
wire control_fifo_rdclk;

wire [35:0]cmd_fifo_q;
wire cmd_fifo_empty;
wire cmd_fifo_rdreq;

wire [511:0]config_reg;
wire [15:0]pulse_reg;
wire [175:0]status_reg;

wire control_mem_we;
wire [31:0]control_mem_addr;
wire [31:0]control_mem_din;

wire idata_data_fifo_rdclk;
wire idata_data_fifo_empty;
wire idata_data_fifo_rden;
wire [31:0]idata_data_fifo_dout;
assign control_clk = clk_100MHz;

control_interface  control_interface_inst(
   .RESET(reset),
   .CLK(control_clk),
  // From FPGA to PC
   .FIFO_Q(control_fifo_q),
   .FIFO_EMPTY(control_fifo_empty),
   .FIFO_RDREQ(control_fifo_rdreq),
   .FIFO_RDCLK(control_fifo_rdclk),
  // From PC to FPGA, FWFT
   .CMD_FIFO_Q(cmd_fifo_q),
   .CMD_FIFO_EMPTY(cmd_fifo_empty),
   .CMD_FIFO_RDREQ(cmd_fifo_rdreq),
  // Digital I/O
   .CONFIG_REG(config_reg),
   .PULSE_REG(pulse_reg),
   .STATUS_REG(status_reg),
  // Memory interface
   .MEM_WE(control_mem_we),
   .MEM_ADDR(control_mem_addr),
   .MEM_DIN(control_mem_din),
   .MEM_DOUT(),
  // Data FIFO interface, FWFT
   .DATA_FIFO_Q(idata_data_fifo_dout),
   .DATA_FIFO_EMPTY(idata_data_fifo_empty),
   .DATA_FIFO_RDREQ(idata_data_fifo_rden),
   .DATA_FIFO_RDCLK(idata_data_fifo_rdclk)
);
assign cmd_fifo_q = gig_eth_rx_fifo_q;
assign cmd_fifo_empty = gig_eth_rx_fifo_empty;
assign gig_eth_rx_fifo_rden = cmd_fifo_rdreq;

assign gig_eth_tx_fifo_wrclk = clk_125MHz;
assign control_fifo_rdclk = gig_eth_tx_fifo_wrclk;
assign gig_eth_tx_fifo_q = control_fifo_q[31:0];
assign gig_eth_tx_fifo_wren = ~control_fifo_empty;
assign control_fifo_rdreq = ~gig_eth_tx_fifo_full;
//---------------------------------------------------------> control_interface

//---------------------------------------------------------> GTX PCIe6
wire [31:0] gt0_rxdata_i;
wire [31:0] gt0_txdata_i;
wire [31:0] gt1_rxdata_i;
wire [31:0] gt1_txdata_i;
wire [31:0] gt2_rxdata_i;
wire [31:0] gt2_txdata_i;
wire [31:0] gt3_rxdata_i;
wire [31:0] gt3_txdata_i;
wire [31:0] gt4_rxdata_i;
wire [31:0] gt4_txdata_i;
wire [31:0] gt5_rxdata_i;
wire [31:0] gt5_txdata_i;
wire [31:0] gt6_rxdata_i;
wire [31:0] gt6_txdata_i;
wire gt0_rxusrclk2_i;
wire gt0_txusrclk2_i;
wire gt1_rxusrclk2_i;
wire gt1_txusrclk2_i;
wire gt2_rxusrclk2_i;
wire gt2_txusrclk2_i;
wire gt3_rxusrclk2_i;
wire gt3_txusrclk2_i;
wire gt4_rxusrclk2_i;
wire gt4_txusrclk2_i;
wire gt5_rxusrclk2_i;
wire gt5_txusrclk2_i;
wire gt6_rxusrclk2_i;
wire gt6_txusrclk2_i;

gtwizard_0_exdes gtwizard_0_exdes_inst(
.Q0_CLK1_GTREFCLK_PAD_N_IN(Q0_CLK1_GTREFCLK_PAD_N_IN),
.Q0_CLK1_GTREFCLK_PAD_P_IN(Q0_CLK1_GTREFCLK_PAD_P_IN),
.DRPCLK_IN(clk_100MHz),
.TRACK_DATA_OUT(),
.RXN_IN(RXN_IN),
.RXP_IN(RXP_IN),
.TXN_OUT(TXN_OUT),
.TXP_OUT(TXP_OUT),
.gt0_rxdata_i(gt0_rxdata_i),
.gt0_txdata_i(gt0_txdata_i),
.gt1_rxdata_i(gt1_rxdata_i),
.gt1_txdata_i(gt1_txdata_i),
.gt2_rxdata_i(gt2_rxdata_i),
.gt2_txdata_i(gt2_txdata_i),
.gt3_rxdata_i(gt3_rxdata_i),
.gt3_txdata_i(gt3_txdata_i),
.gt4_rxdata_i(gt4_rxdata_i),
.gt4_txdata_i(gt4_txdata_i),
.gt5_rxdata_i(gt5_rxdata_i),
.gt5_txdata_i(gt5_txdata_i),
.gt6_rxdata_i(gt6_rxdata_i),
.gt6_txdata_i(gt6_txdata_i),
.gt0_rxusrclk2_i(gt0_rxusrclk2_i),
.gt0_txusrclk2_i(gt0_txusrclk2_i),
.gt1_rxusrclk2_i(gt1_rxusrclk2_i),
.gt1_txusrclk2_i(gt1_txusrclk2_i),
.gt2_rxusrclk2_i(gt2_rxusrclk2_i),
.gt2_txusrclk2_i(gt2_txusrclk2_i),
.gt3_rxusrclk2_i(gt3_rxusrclk2_i),
.gt3_txusrclk2_i(gt3_txusrclk2_i),
.gt4_rxusrclk2_i(gt4_rxusrclk2_i),
.gt4_txusrclk2_i(gt4_txusrclk2_i),
.gt5_rxusrclk2_i(gt5_rxusrclk2_i),
.gt5_txusrclk2_i(gt5_txusrclk2_i),
.gt6_rxusrclk2_i(gt6_rxusrclk2_i),
.gt6_txusrclk2_i(gt6_txusrclk2_i)
);
//---------------------------------------------------------< GTX PCIe6

//---------------------------------------------------------> PRBS31Gen32b
wire [16*7-1:0] Rx_injectErrorCount;

Data_Source Data_Source_Inst(
   .Tx_clk({gt6_txusrclk2_i,gt5_txusrclk2_i,gt4_txusrclk2_i,
            gt3_txusrclk2_i,gt2_txusrclk2_i,gt1_txusrclk2_i,gt0_txusrclk2_i}),
   .reset(reset),
   .enableInj(7'H7F),
   .Rx_injectErrorCount(Rx_injectErrorCount),
   .Tx_data({gt6_txdata_i,gt5_txdata_i,gt4_txdata_i,gt3_txdata_i,
             gt2_txdata_i,gt1_txdata_i,gt0_txdata_i})
);

wire pulse;
assign pulse = pulse_reg[1]; //still right?

wire TX_160MHz_DataIn;
wire TX_160MHz_DataOut;

Data_Checker Data_Checker_Inst
(
   .Rx_clk({gt6_rxusrclk2_i,gt5_rxusrclk2_i,gt4_rxusrclk2_i,gt3_rxusrclk2_i,gt2_rxusrclk2_i,
            gt1_rxusrclk2_i,gt0_rxusrclk2_i}),
   .Tx_clk(clk_160MHz),
   .CLK200M(clk_100MHz),
   .reset(reset),
   .pulse(pulse),
   .Rx_injectErrorCount(Rx_injectErrorCount),
   .Rx_DataIn({gt6_rxdata_i,gt5_rxdata_i,gt4_rxdata_i,gt3_rxdata_i,gt2_rxdata_i,
               gt1_rxdata_i,gt0_rxdata_i}),
   .Tx_Data_Input(TX_160MHz_DataIn),
   .Tx_Data_Out(TX_160MHz_DataOut),

   .fifo_rd_clk(idata_data_fifo_rdclk),
   .fifo_dout(idata_data_fifo_dout),
   .fifo_empty(idata_data_fifo_empty),
   .fifo_rd_en(idata_data_fifo_rden)
);

//---------------------------------------------------------> ila_debug
// wire [95:0] probe0;
// wire [95:0] probe1;
// wire [95:0] probe2;
// wire [95:0] probe3;
// wire [95:0] probe4;
// wire [95:0] probe5;
// wire [95:0] probe6;
// wire [63:0] probe7;
// assign probe0 = {gt0_rxdata_i,Rx0_Error_bit_Count};
// assign probe1 = {gt1_rxdata_i,Rx1_Error_bit_Count};
// assign probe2 = {gt2_rxdata_i,Rx2_Error_bit_Count};
// assign probe3 = {gt3_rxdata_i,Rx3_Error_bit_Count};
// assign probe4 = {gt4_rxdata_i,Rx4_Error_bit_Count};
// assign probe5 = {gt5_rxdata_i,Rx5_Error_bit_Count};
// assign probe6 = {gt6_rxdata_i,Rx6_Error_bit_Count};
// assign probe7 = Tx0_Error_bit_Count;
// ila_0 ila_0_inst (
// 	.clk(gt0_rxusrclk2_i),     // input wire clk
// 	.probe0(probe0), // input wire [95:0]  probe0  
// 	.probe1(probe1), // input wire [95:0]  probe1 
// 	.probe2(probe2), // input wire [95:0]  probe2 
// 	.probe3(probe3), // input wire [95:0]  probe3 
// 	.probe4(probe4), // input wire [95:0]  probe4 
// 	.probe5(probe5), // input wire [95:0]  probe5 
// 	.probe6(probe6), // input wire [95:0]  probe6 
// 	.probe7(probe7) // input wire [63:0]  probe7
// );
//---------------------------------------------------------< ila_debug

//---------------------------------------------------------< IIC
wire START;
wire [1:0]MODE;
wire SL_WR;
wire [6:0]SL_ADDR;
wire [7:0]WR_ADDR;
wire [7:0]WR_DATA0;
wire [7:0]WR_DATA1;
wire [7:0]RD_DATA0;
wire [7:0]RD_DATA1;
wire SDA_OUT;
wire SDA_IN;
wire SDA_T;

assign START = pulse_reg[0];
assign MODE = config_reg[2*32+25:2*32+24];
assign SL_ADDR = config_reg[2*32+23:2*32+17];
assign SL_WR = config_reg[2*32+16];
assign WR_ADDR = config_reg[2*32+15:2*32+8];
assign WR_DATA0 = config_reg[2*32+7:2*32+0];
assign status_reg[15:0] = {RD_DATA1,RD_DATA0};
i2c_wr_bytes i2c_wr_bytes_inst(
.CLK(clk_50MHz),                       //system clock 50Mhz
.RESET(reset),                          //active high reset
.START(START),                          //the rising edge trigger a start, generate by config_reg
.MODE(MODE),                            //'0' is 1 bytes read or write, '1' is 2 bytes read or write,
                                        //'2' is 3 bytes write only , don't set to '3'
.SL_WR(SL_WR),                          //'0' is write, '1' is read
.SL_ADDR(SL_ADDR),                      //slave addr
.WR_ADDR(WR_ADDR),                      //chip internal addr for read and write
.WR_DATA0(WR_DATA0),                    //first byte data for write
.WR_DATA1(WR_DATA1),                    //second byte data for write
.RD_DATA0(RD_DATA0),                    //first byte readout
.RD_DATA1(RD_DATA1),                    //second byte readout
.BUSY(),                          //indicates transaction in progress
.SDA_in(SDA),                           //serial data input of i2c bus
.SDA_out(SDA_OUT),                      //serial data output of i2c bus
.SDA_T(SDA_T),                          //serial data direction of i2c bus
.SCL(SCL)                               //serial clock output of i2c bus
);
assign SDA = SDA_T ? 1'bz : SDA_OUT;
//---------------------------------------------------------> IIC

//---------------------------------------------------------< VIO 
wire [255:0] probe_in0;
wire [255:0] probe_in1;
wire [127:0] probe_in2;
//wire [63:0] probe_in2;
wire [2:0] probe_out0;
assign probe_in0 = config_reg[255:0];
assign probe_in1 = config_reg[511:256];
assign probe_in2 = status_reg[143:16];
//assign probe_in2 = status_reg[79:16];
assign probe_out0 = 3'b000;
vio_0 vio_0_inst (
  .clk(clk_50MHz),                // input wire clk
  .probe_in0(probe_in0),    // input wire [255 : 0] probe_in0
  .probe_in1(probe_in1),    // input wire [255 : 0] probe_in1
  .probe_in2(probe_in2),    // input wire [63 : 0] probe_in2
  .probe_out0(probe_out0)   // output wire [2 : 0] probe_out0
);

//--------------------------------------------> Data bit checker

IBUFDS #(
  .DIFF_TERM("FALSE"),       // Differential Termination
  .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE" 
  .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
) IBUFDS_inst (
  .O(TX_160MHz_DataIn),  // Buffer output
  .I(Data_INP),  // Diff_p buffer input (connect directly to top-level port)
  .IB(Data_INN) // Diff_n buffer input (connect directly to top-level port)
);
// L1ACC single-ended to differential
OBUFDS #(
  .IOSTANDARD("LVDS18"),    // Specify the output I/O standard
  .SLEW("SLOW")             // Specify the output slew rate
) OBUFDS_L1ACC_inst(
  .O(Data_OUTP),           // Diff_p output (connect directly to top-level port)
  .OB(Data_OUTN),          // Diff_n output (connect directly to top-level port)
  .I(TX_160MHz_DataOut)                 // Buffer input 
); 
//---------------------------------------------------------> VIO 
endmodule
