`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2022 05:54:26 AM
// Design Name: 
// Module Name: BtoG_st
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


module BtoG_st(G,B);
output wire [3:0]G;
input [3:0]B;
xor u1(G[3],B[3]);
xor u2(G[2],B[3],B[2]);
xor u3(G[1],B[2],B[1]);
xor u4(G[0],B[1],B[0]);
endmodule
