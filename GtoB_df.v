`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2022 06:32:00 AM
// Design Name: 
// Module Name: GtoB_df
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


module GtoB_df(B,G);
input[3:0]G;
output[3:0]B;
assign B[3]=G[3];
assign B[2]=B[3]^G[2];
assign B[1]=B[2]^G[1];
assign B[0]=B[1]^G[0];
endmodule

