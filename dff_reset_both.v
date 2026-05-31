`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2025 12:12:52 PM
// Design Name: 
// Module Name: dff_reset_both
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


module dff_reset_both(d,clk,reset,q);
 
input d,clk,reset;
output reg q;
//reg q;

always @(posedge clk or negedge reset)
//always @(posedge clk or reset)
//always @(negedge clk or reset)
//always @(negedge clk or posedge reset)
begin
  if (~reset)
//  if (reset)
    q <= 1'b0;
    
  else
    q <= d;
end
endmodule
