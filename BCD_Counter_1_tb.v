`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2025 02:32:13 PM
// Design Name: 
// Module Name: BCD_Counter_1_tb
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


module BCD_Counter_1_tb;
    reg clk;
    reg rst;
    wire [3:0] bcd;
    
    // Instantiate the BCD Counter
    BCD_Counter_1 uut (
        .clk(clk),
        .rst(rst),
        .bcd(bcd)
    );
    // Generate clock signal
        always #5 clk = ~clk; // 10ns clock period
        
        initial begin
            // Initialize inputs
            clk = 0;
            rst = 1;
            
            // Reset pulse
            #10 rst = 0;
            
            // Monitor values
            //$monitor("Time=%0t | Reset=%b | BCD=%b", $time, rst, bcd);
            
            // Run the simulation for 200 time units
            #200 $finish;
        end
        initial begin
            // Dump waveforms for debugging
            $dumpfile("bcd_counter_tb.vcd");
            $dumpvars(0, BCD_Counter_tb);
        end
endmodule
