`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: dbw
// 
// Create Date: 2022/04/23 12:05:55
// Design Name: 
// Module Name: SearchSamplePoint
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


module SearchSamplePoint(
    input clk,
    input reset,
    input [15:0] data,
    output reg pos=1'b0
   
    );
   
    localparam idle=2'b01;
    localparam check=2'b10; 
    
    reg [1:0] state=check;
    reg [10:0] cnt=11'b0;
    reg [15:0] cnts=16'b0;
    always @(posedge clk)
    begin
        if (reset )
        begin
          cnt<=11'b0;
          cnts<=16'b0;
          state<=check;
        end
        else
        case (state)
        check:
        begin
            
            if(data[15:7]==data[9:1]^data[8:0])
            begin
                cnt<=cnt+1'b1;
                cnts<=16'b0;
                if (cnt==11'd2000)
                begin
                    state<=idle;
                    pos<=1'b1;
                end
                else 
                begin
                    state<=check;
                end
            end
            else 
            begin
                cnts<=cnts+1'b1;
                cnt<=11'b0;
                if (cnts==16'd40000) 
                begin
                    state<=idle;
                    pos<=1'b0;
                end
                else
                   state<=check;
                   
            end
           
        end
        idle: begin
             state<=idle;
            end
        endcase
    end 
   
endmodule
