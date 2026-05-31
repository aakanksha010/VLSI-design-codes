`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2025 03:35:31 PM
// Design Name: 
// Module Name: pipe
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


module pipe (
    input  wire clk,
    input  wire ain,
    input  wire bin,
    output reg  qout
);

    reg q1;

    always @(posedge clk) begin
        q1   <= ain;
        qout <= (q1 && ain) | bin;
    end

endmodule
