`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2025 06:15:50 PM
// Design Name: 
// Module Name: swap_w_var_tb
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


module swap_w_var_tb();

reg clk;
  reg rst;
  reg start;
  reg [7:0] in_a, in_b;
  wire [7:0] out_a, out_b;
  wire done;

  // Instantiate the DUT
  swap_w_var tem1 (
    .clk(clk),
    .rst(rst),
    .start(start),
    .in_a(in_a),
    .in_b(in_b),
    .out_a(out_a),
    .out_b(out_b),
    .done(done)
  );

  // Clock generator
  always #5 clk = ~clk;

  initial begin
    // Init
    clk = 0;
    rst = 1;
    start = 0;
    in_a = 8'd12;
    in_b = 8'd34;
    #10 rst = 0;

    // Start swap
    #10 start = 1;
    #10 start = 0;

    // Wait and finish
    #30;
    $display("Output A = %d, Output B = %d", out_a, out_b);
    $finish;
  end
endmodule
