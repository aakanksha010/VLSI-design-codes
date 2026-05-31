`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/24/2025 04:48:06 PM
// Design Name: 
// Module Name: piso_tb
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


module piso_tb();
    reg clk;
    reg reset;
    reg [7:0] data_in;
    wire serial_out;

    // Instantiate the DUT (Device Under Test)
    piso_crap0 ubt (
        .clk(clk),
        .reset(reset),
        .data_in(data_in),
        .serial_out(serial_out)
    );

    // Clock generation: 10 ns clock period
    always #5 clk = ~clk;

    initial begin
        // Initial values
        clk = 0;
        reset = 1;
        data_in = 8'b00000000;

        // Hold reset
        #10;
        reset = 0;

        // First data pattern
        #10;
        data_in = 8'b11010101; // Load this data

        // Hold the data long enough to allow full shift
        #100;

        // Second data pattern
        data_in = 8'b10101010; // New data

        #100;

        // Return to idle (no input)
        data_in = 8'b00000000;

        // Wait for any remaining shifting
        #100;

        // End simulation
        $finish;
    end

    // Display output for debug
    initial begin
        $display("Time\tclk\treset\tdata_in\t\tserial_out");
        $monitor("%0t\t%b\t%b\t%08b\t%b", 
                 $time, clk, reset, data_in, serial_out);
    end
endmodule
