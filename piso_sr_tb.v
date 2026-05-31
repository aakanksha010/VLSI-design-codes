`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/27/2025 09:56:24 AM
// Design Name: 
// Module Name: piso_sr_tb
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


module piso_sr_tb( );
reg clk;
    reg reset;
    //reg load;                      // Always high
    reg [7:0] data_in;
    wire serial_out;

    // Instantiate the Unit Under Test (UUT)
    plin_slout uut (
        .clk(clk),
        .reset(reset),
        //.load(load),
        .data_in(data_in),
        .serial_out(serial_out)
    );

    // Clock generation: 10ns period
    always #5 clk = ~clk;

    initial begin
        // Initialize
        clk = 0;
        reset = 1;
        //load = 0;                 // Always high
        data_in = 8'b0;

        // Apply reset
        #10 reset = 0;

        // Apply first data pattern
        #10 data_in = 8'b10101010;

        // Wait for a few shifts to observe behavior
        #80;

        // Apply second data pattern
        #10 data_in = 8'b11001100;

        // Wait for a few shifts to observe behavior
        #80;

        $finish;
    end

    // Optional: Monitor output
    initial begin
        $display("Time\tclk\treset\tdata_in\t\tserial_out");
        $monitor("%0t\t%b\t%b\t%b\t%b",
                 $time, clk, reset, data_in, serial_out);
    end
endmodule
