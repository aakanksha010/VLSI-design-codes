`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2025 04:52:04 PM
// Design Name: 
// Module Name: priorityencoder4x2
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


module priorityencoder4x2(in_a, out_y);

input [3:0]in_a;
output [1:0]out_y;

reg [1:0]out_y;

always @(a)
begin
  if (in_a[3] == 1'b1)
    out_y = 2'b11;
  else if (in_a[2] == 1'b1)
    out_y = 2'b10;
  else if (in_a[1] == 1'b1)
    out_y = 2'b01;
  else
    out_y = 2'b00;
  
end
endmodule
