`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2025 02:43:22 PM
// Design Name: 
// Module Name: sipo_tb
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


module sipo_tb();

reg clk, reset, data_in;
wire [3:0] data_out;

sipo s1 (data_in, data_out, clk, reset);

initial
begin
clk = 0;
end

always #5 clk = ~clk;
initial//???
begin
  $monitor("Output = %b",data_out);
  data_in = 1'b1;reset = 1'b1;
  #10 data_in = 1'b1;reset = 1'b0;
  #10 data_in = 1'b1;reset = 1'b0;
  #10 data_in = 1'b1;reset = 1'b0;
  #10 data_in = 1'b1;reset = 1'b0;
  #10;
  //$display("Output = %b",data_out);
  $finish;
end
endmodule
