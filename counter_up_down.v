`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2025 09:09:26 AM
// Design Name: 
// Module Name: counter_up_down
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


module counter_up_down(data_in,clk,rst,load_en,up_down,q_out);

input [2:0]data_in;
input clk,rst,load_en,up_down;
output [2:0]q_out;

reg [2:0]q_out;

always @(posedge clk or rst)
begin
  if (rst)
    q_out <= 3'b000;
    
  else if (load_en)
    q_out <= data_in;
    
  else
    begin
      if (up_down)
        q_out <= q_out + 1'b1;
      else
        q_out <= q_out - 1'b1;
    end
    
end
endmodule
