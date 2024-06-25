`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: dbw
// 
// Create Date: 2022/04/12 19:54:53
// Design Name: 
// Module Name: PRBS31_Seed_Checker
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


module PRBS31_Seed_Checker(
    input clock,
    input reset,
    input pulse,
    input [3:0] channel,
    input [15:0] injectErrorCount,
    input [31:0] DataIn,
    output [17:0] shortErrorCount,
    output [127+128:0] dataOut
    );
    
reg [31:0] DataExpected;
 reg [31:0] DataOrigin;
 reg [47:0] TimeStamp;
 wire [63:0] Error_bit_Count;

reg [63:0] Data_reg;
//---------------------------------------------> Data_In storage
always @(posedge clock)
begin
    if(reset)
        Data_reg=64'b0;
    else
        Data_reg <= {DataIn[31:0], Data_reg[63:32]};
end
//---------------------------------------------< Data_In storage
//---------------------------------------------> Time stamp

always @(posedge clock)
begin
    if(reset)
        TimeStamp <= 48'd0;
    else
        TimeStamp <= TimeStamp + 1;
end
//---------------------------------------------< Time stamp


//---------------------------------------------> Check PRBS31
reg [31:0] Bit_Error=32'b0;
////wire [31:0] DataExpected;
//genvar i;
//generate
//    for(i=0;i<32;i=i+1)
//    begin
//       assign Bit_Error[31-i] 	= (Data_reg[1+i]^Data_reg[4+i] == Data_reg[32+i])?0:1;
//	   assign DataOrigin[i] 	= Data_reg[32+i];
//	   assign DataExpected[i] 	= (Data_reg[1+i]^Data_reg[4+i] == Data_reg[32+i])?Data_reg[32+i]:~Data_reg[32+i]; 
//    end
//endgenerate
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
        if(Data_reg[35:4]^Data_reg[32:1] == Data_reg[63:32])begin
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
       if (Data_reg[63:32]==32'h7009a0b2)begin  //7009a0b2  next :1f044a52
           seeds[31:0]<=32'h1f044a52;// :1f044a52
           if (~RELINK) INJECT_CNT_OLD<=injectErrorCount+1;//20220415dbw: when sync, inject error count -INJECT_CNT_OLD for check_error_cnt matching with inject_error_cnt
           else RELINK=1'b0;
           state<=sync;
       end 
       else begin
            if(Data_reg[35:4]^Data_reg[32:1] == Data_reg[63:32])begin
                state<=ifs2;
               
            end
            else begin
                state<=check;
            end
       end
    end
    sync:begin
        state<=sync;
       
        seeds[31:0]<={ seeds[7]^seeds[1],
                      seeds[31:29]^seeds[6:4]^seeds[3:1],
                     seeds[31:4]^seeds[28:1]
                      };
          
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



//---------------------------------------------< Check PRBS31
//---------------------------------------------> Count "1" 
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
    if(pulse)
        Error_bit_Count_reg = 64'b0;
    else if(reset)
        Error_bit_Count_reg = 64'b0;
    else
        Error_bit_Count_reg <= Error_bit_Count_reg + count;
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
//wire probe;
//CRC32gen_t CRC32gen_inst(
//.clk(clk),
//.data(checked_data),
//.crc32(CRC32),
//.probes(probe)

//);

reg [127+128:0] dataOutReg;
always @(posedge clock)
begin
   //dataOutReg <= {errorFlag,channel,TimeStamp,match_injectErrorCount,DataExpected,DataOrigin,Bit_Error,Error_bit_Count[58:0],sum}; 
   dataOutReg <= {errorFlag,channel,TimeStamp,match_injectErrorCount,DataExpected,DataOrigin,Bit_Error,Error_bit_Count[58:0],CRC32}; 

end

assign dataOut = dataOutReg;

//ila_1 ila_12_inst (
//.clk(clock),
//.probe0(Data_reg[31:0]),// reserved 20220412
//.probe1(Data_reg[63:32]),
//.probe2(prbs7dataerr),
//.probe3(seeds[15:0]),
//.probe4(seeds[31:16]),
//.probe5(state),
//.probe6({cnt[3:1],reset}),
//.probe7(16'b0)
//);

endmodule
