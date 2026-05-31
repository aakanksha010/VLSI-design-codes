`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2022 10:54:29 AM
// Design Name: 
// Module Name: ha_st
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


module ha_st(s,c,a,b);
input a,b;
output s,c;
xor x(s,a,b);
and y(c,a,b);
endmodule
