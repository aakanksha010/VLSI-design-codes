`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2025 09:07:56 AM
// Design Name: 
// Module Name: counter_up_3bit
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


module counter_up_3bit(data_in,clk,rst,load_en,q_out);

input [2:0]data_in;
input clk,rst,load_en;
output [2:0]q_out;

reg [2:0]q_out;

always @(posedge clk or rst)
begin
  if (rst)
    q_out <= 3'b000;
  else if (load_en)
    q_out <= data_in;
  else
    q_out <= q_out + 1'b1;
end
endmodule
