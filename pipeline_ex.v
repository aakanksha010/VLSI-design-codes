`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2025 06:07:51 PM
// Design Name: 
// Module Name: pipeline_ex
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


module pipeline_ex(
input wire clk,
  input wire [3:0] A,
  output reg [3:0] B,
  output reg [3:0] C
);

always @(posedge clk) begin
  B <= A;
  C <= B;
end
endmodule
