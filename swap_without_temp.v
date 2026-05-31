`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2025 06:18:02 PM
// Design Name: 
// Module Name: swap_without_temp
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


module swap_without_temp(
input wire clk,
    input wire rst,
    input wire start,
    input wire [7:0] in_a,
    input wire [7:0] in_b,
    output reg [7:0] out_a,
    output reg [7:0] out_b,
    output reg done
);

reg [7:0] a;
reg [7:0] b;
reg state;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        a <= 0;
        b <= 0;
        out_a <= 0;
        out_b <= 0;
        done <= 0;
        state <= 0;
    end else if (start) begin
        a <= in_a;
        b <= in_b;
        done <= 0;
        state <= 1;
    end else if (state == 1) begin
        a <= a ^ b;
        state <= 2;
    end else if (state == 2) begin
        b <= a ^ b;
        state <= 3;
    end else if (state == 3) begin
        a <= a ^ b;
        out_a <= a;
        out_b <= b;
        done <= 1;
        state <= 0;
    end else begin
        done <= 0;
    end
end
endmodule
