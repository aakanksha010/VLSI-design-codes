`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2025 03:39:24 PM
// Design Name: 
// Module Name: testbench
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


module testbench;

    // Inputs
    reg clk;
    reg ain;
    reg bin;

    // Outputs
    wire qout;  // from code1
    wire q3;    // from code2

    // Instantiate code1
    pipe put1 (
        .clk(clk),
        .ain(ain),
        .bin(bin),
        .qout(qout)
    );

    // Instantiate code2
    no_pipe uut2 (
        .clk(clk),
        .ain(ain),
        .bin(bin),
        .q3(q3)
    );

    // Clock generation (10ns period)
    initial clk = 0;
    always #5 clk = ~clk;

    // Stimulus
    initial begin
        // Initialize inputs
        ain = 0;
        bin = 0;

        // Monitor outputs
        $monitor("Time = %0t | ain = %b | bin = %b || code1_qout = %b | code2_q3 = %b",
                  $time, ain, bin, qout, q3);

        // Apply test vectors
        #10 ain = 1; bin = 0;
        #10 ain = 1; bin = 1;
        #10 ain = 0; bin = 1;
        #10 ain = 1; bin = 0;
        #10 ain = 0; bin = 0;
        #10 $finish;
    end

endmodule
