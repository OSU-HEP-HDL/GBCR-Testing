`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/17 21:37:19
// Design Name: 
// Module Name: dataPrbs7Check
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


module dataPrbs7Check(
    input clk,
    input reset,
    input [31:0] data,
    input pulse,        // clear Error_bit_Count
    input [3:0] channel, //channle #
    input [14+1:0] injectErrorCount,
    
    output [17:0] shortErrorCount,  //only 18 bits, put them in the filler
    output [127+128:0] dataOut,
    ////
    output [63:0] prbs7DataERROR,
    output reg [15:0] data16,
    output reg [15:0] seed=16'h0a0a,
   // output reg [1:0] cnt4=2'b00,
   // output reg [2:0] state=3'b010,
   // output wire [8:0] prbsvalue,
    output reg [15:0] cnt=16'h0,
    output reg [15:0] seeds
 //   output reg [15:0] data16t
   // output wire probe
    );
 reg errF=1'b0;
// execute  rx 40M 4bit signal, skew and jitter incure sample 1/8 pulse error   
reg [3:0] d_r [7:0];
reg [15:0] d16 [7:0];
wire [7:0] pos;
genvar i;
generate
    for (i=0;i<8;i=i+1)
    begin: search
        always @(posedge clk)
        begin
            d_r[i]<={data[i],data[i],data[i],data[i]};
        end 
        always @(posedge clk)
        begin
           d16[i][15:12]<=d_r[i];
           d16[i][11:8]<=d16[i][15:12];
           d16[i][7:4]<=d16[i][11:8];
           d16[i][3:0]<=d16[i][7:4];
        end
        
        SearchSamplePoint SearchSamplePoint_inst(
        .clk(clk),
        .reset(reset),
        .data(d16[i]),
        .pos(pos[i])
          );
         
    end  
endgenerate  

wire [2:0] ps;
// maybe signal: 1111_1110=FE  1111_1101=FD   1111_1011=FB  1111_0111=F7
//               1110_1111=EF  1101_1111=DF   1011_1111=BF  0111_1111=7F
// or            1111_1100=FC  1111_1001=F9   1111_0011=F3 
//               1110_0111=E7  1100_1111=CF   1001_1111=9F   0011_1111=3F
assign ps = (pos[7:0] == 8'hFE )?3'b100:
            (pos[7:0] == 8'hFD )?3'b101:
            (pos[7:0] == 8'hFB )?3'b101:
            (pos[7:0] == 8'hF7 )?3'b101:
            (pos[7:0] == 8'hEF )?3'b010:
            (pos[7:0] == 8'hDF )?3'b010:
            (pos[7:0] == 8'hBF )?3'b010:
            (pos[7:0] == 8'h7F )?3'b011:
            (pos[7:0] == 8'hFC )?3'b100:
            (pos[7:0] == 8'hF9 )?3'b101:
            (pos[7:0] == 8'hF3 )?3'b101:
            (pos[7:0] == 8'hE7 )?3'b001:
            (pos[7:0] == 8'hCF )?3'b001:    
            (pos[7:0] == 8'h9F )?3'b010:  
            (pos[7:0] == 8'h3F )?3'b011: 3'b000;       
            
////////////////////////////////////end//////////////////////////////////////////////// 
    // check prbs7 data
reg [3:0] data_r;
always @(posedge clk)
begin
     data_r<={data[24+ps],data[16+ps],data[8+ps],data[0+ps]};
 end


localparam idle=6'b0000_0001;
localparam check=6'b0000_0010;
localparam sync=6'b0000_0100;
localparam ifs1=6'b0000_1000;
localparam ifs2=6'b0001_0000;
reg [5:0] state=idle;
always @(posedge clk)
begin
   data16[15:12]<=data_r;
   data16[11:8]<=data16[15:12];
   data16[7:4]<=data16[11:8];
   data16[3:0]<=data16[7:4];

end

reg [3:0] Bit_Error=4'b0000;
reg [63:0] prbs7dataerr=64'h0000;
reg [15:0] INJECT_CNT_OLD=16'h0000;
reg RELINK=1'b0;
wire [63:0] Error_bit_Count;
wire [1:0] count;

always @(posedge clk)
begin
    case(state)
    idle:begin
        prbs7dataerr<=64'h0000_0000;
        cnt<=7'b0;
        Bit_Error=16'b0;
        state<=check;
        errF<=1'b0;
    end
    check:begin
        //prbs7dataerr<=prbs7dataerr+1'b1;
        if(data16[11:8]==data16[5:2]^data16[4:1])begin
            cnt<=cnt+1'b1;
            if (cnt==16'd600)begin
                 state<=ifs2;
            end
            else state<=check;
        end
        else begin
            state<=check;
            cnt<=16'b0;
           
        end
    end
    
//    ifs1:begin
//        if(data16[11:8]==data16[5:2]^data16[4:1])begin
//                state<=ifs2;
//                cnt<=4'b0;
//            end
//            else begin
//                state<=check;
//            end
//    end
    ifs2:begin
       //prbs7dataerr<=prbs7dataerr+1'b1;
       if (data16==16'hfaa6)begin
        seed<=16'hfaa6;
         seeds[15:0]<=16'h3ffa;
         if (~RELINK) INJECT_CNT_OLD<=injectErrorCount+1;//20220415dbw: when sync, inject error count -INJECT_CNT_OLD for check_error_cnt matching with inject_error_cnt
         else RELINK=1'b0;
         state<=sync;
         errF<=1'b1;
       end 
       else begin
            if(data16[11:8]==data16[5:2]^data16[4:1])begin
                state<=ifs2;
               
            end
            else begin
                state<=check;
                cnt<=16'b0;
            end
       end
    end
    sync:begin
        
        seeds[15:0]<={ seed[11]^seed[9],seed[10]^seed[9]^seed[15],seed[15]^seed[14], seed[14]^seed[13],  seed[13]^seed[12],seed[12]^seed[11],seed[11]^seed[10],seed[10]^seed[9],seed[15:8]};
        seed[15:0]<=seeds[15:0];
        
       if (seeds[15]^data16[15]) begin 
            //prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[3]=1'b1;
            end
            else Bit_Error[3]=1'b0;
       if (seeds[14]^data16[14]) begin
            //prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[2]=1'b1;
            end
            else Bit_Error[2]=1'b0;
       if (seeds[13]^data16[13]) begin
            //prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[1]=1'b1;
            end
            else Bit_Error[1]=1'b0;
       if (seeds[12]^data16[12]) begin
            //prbs7dataerr<=prbs7dataerr+1'b1;
            Bit_Error[0]=1'b1;
            end
            else Bit_Error[0]=1'b0;
       prbs7dataerr<=prbs7dataerr+count;
       if (reset)begin state<=idle; prbs7dataerr<=0;end else state<=sync;
       if ((prbs7dataerr>injectErrorCount)&&(prbs7dataerr-injectErrorCount>16'h3000)) begin
            state<=idle;
            prbs7dataerr<=64'h0;
            Bit_Error<=4'h0;
            errF<=1'b0;
            RELINK<=1'b1;
       end
       else state<=sync;
    end
    
    endcase
end


//reg [31:0] prbs7dataerr=32'h0000;
assign prbs7DataERROR=prbs7dataerr;

// add interface to Data_Checker.v 
 wire [31:0] DataExpected;
 wire [31:0] DataOrigin;
 reg [47:0] TimeStamp;
 
 wire [31:0] DataIn;
 assign DataIn=data;

always @(posedge clk)
begin
    if(reset)
        TimeStamp <= 44'd0;
    else
        TimeStamp <= TimeStamp + 1;
end
 

assign count = Bit_Error[0] + Bit_Error[1] + Bit_Error[2] + Bit_Error[3]; 
 
reg [63:0] Error_bit_Count_reg;
assign Error_bit_Count = Error_bit_Count_reg;
always @(posedge clk or posedge pulse)
begin
    if(pulse)
        Error_bit_Count_reg = 64'b0;
    else if(reset)
        Error_bit_Count_reg = 64'b0;
    else
        Error_bit_Count_reg <= Error_bit_Count_reg + count;
end
assign shortErrorCount = Error_bit_Count[17:0];

assign DataOrigin={16'h0000,data16};
assign DataExpected={16'h0000,seeds};

wire errorFlag = (|Bit_Error)& errF; 

// 20220415 add by dbw
wire [15:0] match_injectErrorCount;
assign match_injectErrorCount=injectErrorCount-INJECT_CNT_OLD;

//wire [31:0] sum;
//assign sum[31:0]={errorFlag,channel,TimeStamp[47:16+5]}+{TimeStamp[20:0],match_injectErrorCount[15:5]}
//                    +{match_injectErrorCount[4:0],DataExpected[31:5]}+
//                    {DataExpected[4:0],DataOrigin[31:5]}+
//                    {DataOrigin[4:0],{16'h0000,Bit_Error,7'h00}}+
//                    {5'h0,Error_bit_Count[58:32]}+
//                    Error_bit_Count[31:0];

// note: CRC32=x32+x26+x23+x22+x16+x12+x11+x10+x8+x7+x5+x4+x2+x1+1  20220418 dbw add
wire [223:0]checked_data={errorFlag,channel,TimeStamp,match_injectErrorCount,DataExpected,DataOrigin,{16'h0000,Bit_Error,12'h000},Error_bit_Count[58:0]};//Error_bit_Count[58:0]};
wire [31:0] CRC32;
CRC32gen CRC32gen_inst(
.data(checked_data),
.crc32(CRC32)
);
//CRC32gen_prbs7chk CRC32gen_prbs7chk_inst(
//.clk(clk),
//.data(checked_data),
//.crc32(CRC32),
//.probes(probe)

//);

reg [127+128:0] dataOutReg;
always @(posedge clk)
begin
    dataOutReg <= {errorFlag,channel,TimeStamp,match_injectErrorCount,DataExpected,DataOrigin,{16'h0000,Bit_Error,12'h000},Error_bit_Count[58:0],CRC32};//Error_bit_Count[58:0],CRC32}; 
end

assign dataOut = dataOutReg;


//ila_3 ila_3_inst(
//.clk(clk),
//.probe0(prbs7dataerr[58:0]),
//.probe1(state),
//.probe2(errorFlag),
//.probe3(Bit_Error),
//.probe4(data16),
//.probe5(seeds),
//.probe6(seed),
//.probe7(data),
//.probe8(ps)
//);


endmodule
