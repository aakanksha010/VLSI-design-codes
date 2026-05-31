`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/16/2025 12:17:13 PM
// Design Name: 
// Module Name: fsm_t_ff
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


module fsm_t_ff(clk,rst,y_out);
input clk,rst;
output reg y_out;
parameter s0 = 0;
parameter s1 = 1;
reg current_state;
reg next_state;

always @(posedge clk or negedge rst)
begin
  if (~rst)
    current_state <= s0;
  else
    current_state <= next_state;
end

always @(current_state)
begin
  case(current_state)
    s0: next_state = s1;
    s1: next_state = s0;
    default: next_state = s0;
  endcase
end

always @(current_state)
begin
  case(current_state)
    s0: y_out = 1'b0;
    s1: y_out = 1;
    default: y_out = 1'b0;
  endcase
end
endmodule
