`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2022 06:33:02 AM
// Design Name: 
// Module Name: GtoB_st
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


module GtoB_st(B,G);
input[3:0]G;
output[3:0]B;
wire[3:0]B;
buf u4 (B[3],G[3]);
xor u1 (B[2],B[3],G[2]);
xor u2 (B[1],B[2],G[1]);
xor u3 (B[0],B[1],G[0]);
endmodule
