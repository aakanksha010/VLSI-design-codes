`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2025 03:47:42 PM
// Design Name: 
// Module Name: dff_with_load
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


module dff_with_load(d_in,load_en,rst,clk,q_out);

input d_in,clk,load_en,rst;
output reg q_out;

always @(posedge clk or negedge rst)
begin
  if (~rst)
    q_out <= 1'b1;
    
  else if (load_en)
    q_out <= 1'b0;
    
  else
    q_out <= d_in;    
end
endmodule
