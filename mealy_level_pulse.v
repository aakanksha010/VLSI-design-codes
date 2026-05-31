`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/16/2025 02:59:54 PM
// Design Name: 
// Module Name: mealy_level_pulse
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


module mealy_level_pulse(data_in,clk,rst,y_out);
input clk,rst,data_in;
output reg y_out;

parameter s0 = 0;
parameter s1 = 1;

reg current_state;
reg next_state;

always@(posedge clk or negedge rst)
begin
if (~rst)
  current_state <= s0;
else
  current_state <= next_state;
end

always@ (current_state,data_in)
begin
  case (current_state)
    s0: if(data_in) next_state = s1;
        else
        next_state = s0;
    s1: if(data_in) next_state = s1;
        else next_state = s0;
    default: next_state = s0;
  endcase
end

always@ (current_state, data_in)
case (current_state)
  s0: y_out = 1'b0;
  s1: if(data_in) y_out = 1'b1;
      else y_out = 1'b0;
  default: y_out = 1'b0;
endcase 
endmodule
