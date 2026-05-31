`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2025 03:36:48 PM
// Design Name: 
// Module Name: no_pipe
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


module no_pipe (
    input  wire clk,
    input  wire ain,
    input  wire bin,
    output reg  q3
);

    reg q1, q2;

    always @(posedge clk) begin
        q1 <= ain;
        q2 <= q1 && ain;
        q3 <= q2 | bin;
    end

endmodule
