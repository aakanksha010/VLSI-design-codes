`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2025 09:12:07 PM
// Design Name: 
// Module Name: pipo
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


module pipo(d_in,clk,rst,q_out);

input clk,rst;
input [3:0]d_in;
output [3:0]q_out;
reg [3:0]q_out;

always @(posedge clk or rst)
begin
  if (rst)
    q_out <= 4'b0000;
    
  else
    q_out <= d_in;
end
endmodule
