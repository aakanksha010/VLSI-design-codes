`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2022 12:22:02 PM
// Design Name: 
// Module Name: hs_st
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


module hs_st();
input x,y;
output d,b;
xor e(d,x,y);
and f(b,(~x),y);
endmodule
