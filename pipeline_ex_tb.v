`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2025 06:08:15 PM
// Design Name: 
// Module Name: pipeline_ex_tb
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


module pipeline_ex_tb();

reg clk;
  reg [3:0] A;
  wire [3:0] B, C;

  pipeline_ex ut (
    .clk(clk),
    .A(A),
    .B(B),
    .C(C)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    A = 4'd1; #10;
    A = 4'd2; #10;
    A = 4'd3; #10;
    A = 4'd4; #10;
    $finish;
  end

  always @(posedge clk) begin
    $display("Time %0t: A = %d, B = %d, C = %d", $time, A, B, C);
  end
  
endmodule
