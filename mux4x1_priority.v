`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2025 11:26:17 AM
// Design Name: 
// Module Name: mux4x1_priority
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


module mux4x1_priority(a,b,c,d,s,s0,s1,y);
input a,b,c,d,s0,s1;
input [1:0] s;
output y;
reg y;

always @(a or b or c or d or s0 or s1)
begin
  if (s0 == 1'b0 && s1 == 1'b0)
    y = a;
  else if (s0 == 1'b1 && s1 == 1'b0)
    y = b;
  else if (s0 == 1'b0 && s1 == 1'b1) 
    y = c;
  else
    y = d;
end

always @(a or b or c or d or s)
begin
  if (s == 2'b00)
    y = a;
  else if (s == 2'b01)
    y = b;
  else if (s == 2'b10)
    y = c;
  else 
    y = d;
end 
endmodule
