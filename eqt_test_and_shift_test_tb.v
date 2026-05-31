`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2025 03:13:49 PM
// Design Name: 
// Module Name: eqt_test_and_shift_test_tb
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


module eqt_test_and_shift_test_tb();
    wire [2:0] P, Q;
    wire signed [3:0] x, shifted_x;
  eqt_test_and_shift_test eqs1(.P(P),
            .Q(Q),
            .x(x),
            .shifted_x(shifted_x));

    initial 
    begin
        // Optional: dump waveform data 
        //$dumpfile("waveform.vcd");
        //$dumpvars(0, eqt_test_and_shift_test_tb);

        // Let the DUT finish its display
        #10;
        $finish;
    end
endmodule
