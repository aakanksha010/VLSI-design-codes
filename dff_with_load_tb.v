`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2025 04:54:17 PM
// Design Name: 
// Module Name: dff_with_load_tb
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


module dff_with_load_tb();

reg d_in,clk,rst,load_en;
wire q_out;

dff_with_load dl1(.d_in(d_in),
              .load_en(load_en),
              .rst(rst),
              .clk(clk),
              .q_out(q_out));
initial
begin
clk = 0;
end             
always #5 clk = ~clk;
initial
begin
  d_in = 1'b0; rst = 1'b1; load_en = 1'b1;
  #10 d_in = 1'b1; rst = 1'b1; load_en = 1'b1;
  #10 d_in = 1'b1; rst = 1'b0; load_en = 1'b1;
  #10 d_in = 1'b0; rst = 1'b1; load_en = 1'b0;
  #10 d_in = 1'b1; rst = 1'b0; load_en = 1'b1;
  #10 d_in = 1'b1; rst = 1'b0; load_en = 1'b0;
  #10 d_in = 1'b0; rst = 1'b0; load_en = 1'b0;
  #20;
  $finish;
end
endmodule
