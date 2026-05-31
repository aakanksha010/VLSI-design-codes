`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2025 02:31:36 PM
// Design Name: 
// Module Name: BCD_Counter_1
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


module BCD_Counter_1(
    input wire clk,    // Clock input
    input wire rst,    // Asynchronous reset
    output reg [3:0] bcd // 4-bit BCD output
    );
    always @(posedge clk or posedge rst) begin
            if (rst) 
                bcd <= 4'b0000;  // Reset the counter to 0
            else if (bcd == 4'b1001)
                bcd <= 4'b0000;  // Reset to 0 when it reaches 9
            else
                bcd <= bcd + 1;  // Increment the counter
        end
endmodule
