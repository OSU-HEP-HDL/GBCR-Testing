`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SMU
// Engineer: dbw
// 
// Create Date: 2022/04/18 10:06:08
// Design Name: 
// Module Name: CRC32gen
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


module CRC32gen(
    input [223:0] data,
    output [31:0] crc32
  );
 wire [7:0]data8[27:0];
 wire [31:0] crc32_8[27:0];
 assign data8[0]=data[223:216];
  
 CRC32_8gen CRC32_8gen_inst(
 .data(data8[0]),
 .crc32_init(32'hffff_ffff),
 .crc32(crc32_8[0])
 );

 genvar i;
 generate
    for (i=1;i<28; i=i+1)
        begin
            assign data8[i]=data[224-8*i-1:216-8*i];
           CRC32_8gen CRC32_8gen_inst(
             .data(data8[i]),//[223:216]),
             .crc32_init(crc32_8[i-1]),
             .crc32(crc32_8[i])
            );   
        end
 endgenerate

 assign  crc32=crc32_8[27];

endmodule
