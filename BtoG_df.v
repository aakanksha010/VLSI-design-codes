`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2022 05:53:15 AM
// Design Name: 
// Module Name: BtoG_df
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


module BtoG_df(G,B);
input [3:0]B;
output [3:0]G;
assign G[3]=B[3];
assign G[2]=B[3]^B[2];
assign G[1]=B[2]^B[1];
assign G[0]=B[1]^B[0];
endmodule


