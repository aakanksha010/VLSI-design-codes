`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2022 10:58:00 AM
// Design Name: 
// Module Name: fa_df
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


module fa_df(s,c,a,b,d);
input a,b,d;
output s,c;
assign s=a^b^d;
assign c=(a&b)|(b&d)|(d&a);
endmodule
