`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2025 06:14:01 PM
// Design Name: 
// Module Name: swap_w_var
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


module swap_w_var(
input wire clk,
    input wire rst,
    input wire start,
    input wire [7:0] in_a,
    input wire [7:0] in_b,
    output reg [7:0] out_a,
    output reg [7:0] out_b,
    output reg done
);

reg [7:0] temp;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        out_a <= 0;
        out_b <= 0;
        temp  <= 0;
        done  <= 0;
    end else if (start) begin
        temp  <= in_a;
        out_a <= in_b;
        out_b <= temp;
        done  <= 1;
    end else begin
        done <= 0;
    end
end
endmodule
