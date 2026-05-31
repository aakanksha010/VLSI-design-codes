`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2025 07:50:30 PM
// Design Name: 
// Module Name: counter_4bit_clkdiv_tb
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


module counter_4bit_clkdiv_tb();
  reg clk;
  reg rst;
  wire [3:0] count;
  
  counter_4bit_clkdiv c1 (.clk(clk),.rst(rst),.count(count));
  
  initial clk = 0;
  always #10 clk = ~clk;
  
  initial
  begin
    rst = 1;
    #10 rst = 0;
    #200;
    $finish;
  end
endmodule
