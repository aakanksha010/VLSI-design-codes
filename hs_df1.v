`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2022 12:54:04 PM
// Design Name: 
// Module Name: hs_df1
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


module hs_df1(d,b,x,y);
input x,y;
output d,b;
assign d=a^b;
assign b=(~x)&y ;
endmodule
