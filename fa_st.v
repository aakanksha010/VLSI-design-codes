`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2022 11:22:13 AM
// Design Name: 
// Module Name: fa_st
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


module fa_st(s,c,a,b,d);
input a,b,d;
output s,c;
xor x1(s,a,b,d);
and y1(c,a,b,d);
endmodule
