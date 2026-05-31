`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/16/2025 03:14:27 PM
// Design Name: 
// Module Name: bit2_counter_fsm
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


module bit2_counter_fsm(clk,rst,y_out);
input clk,rst;
output reg [1:0]y_out;

parameter s0 = 2'b00;
parameter s1 = 2'b01;
parameter s2 = 2'b10;
parameter s3 = 2'b11;

reg[1:0]current_state;
reg [1:0]next_state;

always@(posedge clk or negedge rst)
endmodule
