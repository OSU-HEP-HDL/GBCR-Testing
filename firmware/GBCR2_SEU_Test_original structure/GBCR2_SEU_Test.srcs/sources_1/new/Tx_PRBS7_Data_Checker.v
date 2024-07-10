`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: dbw
// 
// Create Date: 2022/04/09 21:34:26
// Design Name: 
// Module Name: Tx_PRBS7_Data_Checker
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:  MSB   X7^X6=X0
// 
//////////////////////////////////////////////////////////////////////////////////


module Tx_PRBS7_Data_Checker(
    input clock,
    input reset,
    input pulse,
    //input [31:0] DataIn,
    output [63:0] Error_bit_Count,
    input [3:0] channel,
    input [15:0] injectErrorCount,
    input [31:0] DataIn,
    output [17:0] shortErrorCount,
    output [127+128:0] dataOut
    //output probeTx
    );
reg [31:0] DataExpected;
 reg [31:0] DataOrigin;
 reg [47:0] TimeStamp;
 //wire [63:0] Error_bit_Count;
 
//---------------------------------------------> Time stamp

always @(posedge clock)
begin
    if(reset)
        TimeStamp <= 48'd0;
    else
        TimeStamp <= TimeStamp + 1;
end
//---------------------------------------------< Time stamp
 
reg [63:0] Data_reg=64'd0;
//---------------------------------------------> Data_In storage
always @(posedge clock)
begin
   if(reset | pulse)
		Data_reg <= 64'd0;
	else
		Data_reg <= {Data_reg[31:0], DataIn};// MSB 
end
//---------------------------------------------< Data_In storage
reg [31:0] Bit_Error;

     // check prbs7 data

localparam idle=3'b001;
localparam check=3'b010;
localparam sync=3'b100;
localparam ifs1=3'b011;
localparam ifs2=3'b101;

reg [2:0] state=idle;
reg [3:0] cnt;
reg [31:0] seeds;
//reg [3:0] Bit_Error=4'b0000;
reg [31:0] prbs7dataerr=32'h0000;
reg [15:0] INJECT_CNT_OLD=16'h0000;
reg RELINK=1'b0;
always @(posedge clock)
begin
    case(state)
    idle:begin
        prbs7dataerr<=32'h0000;
        cnt<=4'b0;
        Bit_Error=32'b0;
        state<=check;
    end
    check:begin
        //prbs7dataerr<=prbs7dataerr+1'b1;
        if(Data_reg[38:7]^Data_reg[37:6] == Data_reg[31:0])begin
            cnt<=cnt+1'b1;
            if (cnt==14)begin
                 state<=ifs2;
            end
            else state<=check;
        end
        else begin
            state<=check;
           
        end
    end
    ifs2:begin
       //prbs7dataerr<=prbs7dataerr+1'b1;
       if (Data_reg[63:32]==32'hBB9957F0)begin  //MSB BB9957F0  mext:20c28f22
           seeds[31:0]<=32'h20c28f22;// MSB:20c28f22
           if (~RELINK) INJECT_CNT_OLD<=injectErrorCount+1;//20220415dbw: when sync, inject error count -INJECT_CNT_OLD for check_error_cnt matching with inject_error_cnt
           else RELINK=1'b0;
           state<=sync;
       end 
       else begin
            if(Data_reg[38:7]^Data_reg[37:6] == Data_reg[31:0])begin
                state<=ifs2;
               
            end
            else begin
                state<=check;
            end
       end
    end
    sync:begin
        state<=sync;
       
        seeds[31:0]<={ 
                     seeds[6:1]^seeds[5:0],
                     seeds[6]^seeds[5]^seeds[0],
                     seeds[6:2]^seeds[4:0],
                      seeds[6:5]^seeds[5:4]^seeds[1:0],
                      seeds[6:3]^seeds[5:2]^seeds[4:1]^seeds[3:0],
                      seeds[6]^seeds[5]^seeds[2]^seeds[1]^seeds[0],
                      seeds[6]^seeds[4]^seeds[1]^seeds[0],
                      seeds[6]^seeds[3]^seeds[0],
                      seeds[6:4]^seeds[2:0],
                      seeds[6:3]^seeds[5:2]^seeds[3:0],
                      seeds[6:5]^seeds[5:4]^seeds[2:1]^seeds[1:0],
                      seeds[6]^seeds[5]^seeds[4]^seeds[3]^seeds[0],
                      seeds[6]^seeds[4]^seeds[3]^seeds[2]};
          
       if (seeds[31]^Data_reg[63]) begin 
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[31]<=1'b1;
            end
            else Bit_Error[31]<=1'b0;
       if (seeds[30]^Data_reg[62]) begin
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[30]<=1'b1;
            end
            else Bit_Error[30]<=1'b0;
       if (seeds[29]^Data_reg[61]) begin
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[29]<=1'b1;
            end
            else Bit_Error[29]<=1'b0;
       if (seeds[28]^Data_reg[60]) begin
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[28]<=1'b1;
            end
            else Bit_Error[28]<=1'b0;
       if (seeds[27]^Data_reg[59]) begin 
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[27]<=1'b1;
            end
            else Bit_Error[27]<=1'b0;
       if (seeds[26]^Data_reg[58]) begin
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[26]<=1'b1;
            end
            else Bit_Error[26]<=1'b0;
       if (seeds[25]^Data_reg[57]) begin
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[25]<=1'b1;
            end
            else Bit_Error[25]<=1'b0;
       if (seeds[24]^Data_reg[56]) begin
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[24]<=1'b1;
            end
            else Bit_Error[24]<=1'b0;   
       
       if (seeds[23]^Data_reg[55]) begin 
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[23]<=1'b1;
            end
            else Bit_Error[23]<=1'b0;
       if (seeds[22]^Data_reg[54]) begin
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[22]<=1'b1;
            end
            else Bit_Error[22]<=1'b0;
       if (seeds[21]^Data_reg[53]) begin
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[21]<=1'b1;
            end
            else Bit_Error[21]<=1'b0;
       if (seeds[20]^Data_reg[52]) begin
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[20]<=1'b1;
            end
            else Bit_Error[20]<=1'b0;
       if (seeds[19]^Data_reg[51]) begin 
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[19]<=1'b1;
            end
            else Bit_Error[19]<=1'b0;
       if (seeds[18]^Data_reg[50]) begin
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[18]<=1'b1;
            end
            else Bit_Error[18]<=1'b0;
       if (seeds[17]^Data_reg[49]) begin
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[17]<=1'b1;
            end
            else Bit_Error[17]<=1'b0;
       if (seeds[16]^Data_reg[48]) begin
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[16]<=1'b1;
            end
            else Bit_Error[16]<=1'b0;       
            
      if (seeds[31-16]^Data_reg[63-16]) begin 
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[31-16]<=1'b1;
            end
            else Bit_Error[31-16]<=1'b0;
       if (seeds[30-16]^Data_reg[62-16]) begin
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[30-16]<=1'b1;
            end
            else Bit_Error[30-16]<=1'b0;
       if (seeds[29-16]^Data_reg[61-16]) begin
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[29-16]<=1'b1;
            end
            else Bit_Error[29-16]<=1'b0;
       if (seeds[28-16]^Data_reg[60-16]) begin
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[28-16]<=1'b1;
            end
            else Bit_Error[28-16]<=1'b0;
       if (seeds[27-16]^Data_reg[59-16]) begin 
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[27-16]<=1'b1;
            end
            else Bit_Error[27-16]<=1'b0;
       if (seeds[26-16]^Data_reg[58-16]) begin
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[26-16]<=1'b1;
            end
            else Bit_Error[26-16]<=1'b0;
       if (seeds[25-16]^Data_reg[57-16]) begin
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[25-16]<=1'b1;
            end
            else Bit_Error[25-16]<=1'b0;
       if (seeds[24-16]^Data_reg[56-16]) begin
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[24-16]<=1'b1;
            end
            else Bit_Error[24-16]<=1'b0;   
       
       if (seeds[23-16]^Data_reg[55-16]) begin 
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[23-16]<=1'b1;
            end
            else Bit_Error[23-16]<=1'b0;
       if (seeds[22-16]^Data_reg[54-16]) begin
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[22-16]<=1'b1;
            end
            else Bit_Error[22-16]<=1'b0;
       if (seeds[21-16]^Data_reg[53-16]) begin
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[21-16]<=1'b1;
            end
            else Bit_Error[21-16]<=1'b0;
       if (seeds[20-16]^Data_reg[52-16]) begin
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[20-16]<=1'b1;
            end
            else Bit_Error[20-16]<=1'b0;
       if (seeds[19-16]^Data_reg[51-16]) begin 
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[19-16]<=1'b1;
            end
            else Bit_Error[19-16]<=1'b0;
       if (seeds[18-16]^Data_reg[50-16]) begin
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[18-16]<=1'b1;
            end
            else Bit_Error[18-16]<=1'b0;
       if (seeds[17-16]^Data_reg[49-16]) begin
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[17-16]<=1'b1;
            end
            else Bit_Error[17-16]<=1'b0;
       if (seeds[16-16]^Data_reg[48-16]) begin
            prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[16-16]<=1'b1;
            end
            else Bit_Error[16-16]<=1'b0;         
       
       if ( reset )begin state<=idle; prbs7dataerr<=0;end
       if (prbs7dataerr-injectErrorCount==16'h3000) begin
            state<=idle;
            RELINK<=1'b1;
       end
    end
    
    endcase
end

wire [5:0] count;
assign count = Bit_Error[0] + Bit_Error[1] + Bit_Error[2] + Bit_Error[3] + 
               Bit_Error[4] + Bit_Error[5] + Bit_Error[6] + Bit_Error[7] +
               Bit_Error[8] + Bit_Error[9] + Bit_Error[10] + Bit_Error[11] +
               Bit_Error[12] + Bit_Error[13] + Bit_Error[14] + Bit_Error[15] +
               Bit_Error[16] + Bit_Error[17] + Bit_Error[18] + Bit_Error[19] +
               Bit_Error[20] + Bit_Error[21] + Bit_Error[22] + Bit_Error[23] +
               Bit_Error[24] + Bit_Error[25] + Bit_Error[26] + Bit_Error[27] +
               Bit_Error[28] + Bit_Error[29] + Bit_Error[30] + Bit_Error[31];
//---------------------------------------------< Count "1" 

//---------------------------------------------> calculate total "1"
reg [63:0] Error_bit_Count_reg;
assign Error_bit_Count = Error_bit_Count_reg;
always @(posedge clock or posedge pulse)
begin
    if(pulse)                                   // software clear
        Error_bit_Count_reg = 64'd0;
    else if(reset)                              // hardware clear via CPU RST Button
        Error_bit_Count_reg = 64'd0;
    else
        Error_bit_Count_reg <=Error_bit_Count_reg+ count;
end

assign shortErrorCount = Error_bit_Count[17:0];
//---------------------------------------------< calculate total "1"

wire errorFlag = |Bit_Error; 
always @(posedge clock)
begin
     DataOrigin<=Data_reg[63:32];
     DataExpected<=seeds;
end

// 20220415 add by dbw
wire [15:0] match_injectErrorCount;
assign match_injectErrorCount=injectErrorCount-INJECT_CNT_OLD;

//wire [31:0] sum;
//assign sum[31:0]={errorFlag,channel,TimeStamp[47:16+5]}+{TimeStamp[20:0],match_injectErrorCount[15:5]}
//                    +{match_injectErrorCount[4:0],DataExpected[31:5]}+
//                    {DataExpected[4:0],DataOrigin[31:5]}+
//                    {DataOrigin[4:0],Bit_Error[31:5]}+
//                    {Bit_Error[4:0],Error_bit_Count[58:32]}+
//                    Error_bit_Count[31:0];
// note: CRC32=x32+x26+x23+x22+x16+x12+x11+x10+x8+x7+x5+x4+x2+x1+1  20220418 dbw add
wire [223:0]checked_data={errorFlag,channel,TimeStamp,match_injectErrorCount,DataExpected,DataOrigin,Bit_Error,Error_bit_Count[58:0]};
wire [31:0] CRC32;
CRC32gen CRC32gen_inst(

.data(checked_data),
.crc32(CRC32)
);

//CRC32gen_t CRC32gen_inst(
//.clk(clock),
//.data(checked_data),
//.dataOut(dataOut),
//.crc32(CRC32),
//.probes(probeTx)

//);

reg [127+128:0] dataOutReg;
always @(posedge clock)
begin
    //dataOutReg <= {errorFlag,channel,TimeStamp,match_injectErrorCount,DataExpected,DataOrigin,Bit_Error,Error_bit_Count[58:0],sum}; 
    dataOutReg <= {errorFlag,channel,TimeStamp,match_injectErrorCount,DataExpected,DataOrigin,Bit_Error,Error_bit_Count[58:0],CRC32}; 
end

assign dataOut = dataOutReg;

//ila_256 ila_256_inst(
//.clk(clock),
//.probe0(dataOut)
//);

endmodule
