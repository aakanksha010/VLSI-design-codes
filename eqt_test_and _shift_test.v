`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2025 02:55:16 PM
// Design Name: 
// Module Name: eqt_test_and _shift_test
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


module eqt_test_and_shift_test(output reg [2:0] P, Q, output reg signed [3:0] x, shifted_x);
  reg [2:0] P, Q;
  reg signed [3:0] x;
  reg signed [3:0] shifted_x;

    initial 
    begin
        // Original equality test
      P = 3'b1x0;
      Q = 3'b1x0;

      $display("P = %b, Q = %b", P, Q);
      $display("P == Q   -> %d", P == Q);
      $display("P === Q  -> %d", P === Q);

        // Shift operation
      x = 4'b1100;          // signed -4 in 4-bit 2's complement
      shifted_x = x >>> 2;  // arithmetic right shift by 2

      $display("x = %b (%0d)", x, x);
      $display("x >>> 2 = %b (%0d)", shifted_x, shifted_x);
    end

endmodule
