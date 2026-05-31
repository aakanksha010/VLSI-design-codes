`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2025 11:06:34 AM
// Design Name: 
// Module Name: 2x1_mux_case
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


module mux2x1_case(a,b,s,y);
input a,b,s;
output y;
reg y;

begin
always @(a or b or s)
  case (s)
    1'b0: y = a;
    1'b1: y = b;
  endcase
end
endmodule
