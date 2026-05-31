`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2025 05:23:04 PM
// Design Name: 
// Module Name: time_disp
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


module time_disp();
initial
for(reg[3:0] i=0; i<16;i++)
  #$display ("%t:%d",$time,i);
  
endmodule
