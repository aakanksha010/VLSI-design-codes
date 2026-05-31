`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2025 05:05:31 PM
// Design Name: 
// Module Name: alu
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


module alu(a,b,op_code,y);
input [3:0]a;
input [3:0]b;
input [1:0]op_code;
output reg [3:0]y;

always @(a or b or op_code)
begin
  case(op_code)
    2'b00: y = a&b;
    2'b01: y = a|b;
    2'b10: y = a^b;
    2'b11: y = ~a;
    default: y = 4'b0000;
  endcase
end
endmodule
