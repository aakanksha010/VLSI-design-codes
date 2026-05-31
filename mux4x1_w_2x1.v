`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2025 12:27:43 PM
// Design Name: 
// Module Name: mux4x1_w_2x1
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


module mux4x1_w_2x1(a,b,c,d,sel,y1,y2,y);

input a,b,c,d;
input [1:0]sel;
output y1,y2,y;
reg y1;
reg y2;
reg y;

always @(sel[0])
begin
  case (sel[0])
  1'b0:begin
    y1 = a;
    y2 = c;
    end
  1'b1:begin
    y1 = b;
    y2 = d;
    end
  endcase
end

always @(y1 or y2 or sel[1])
begin
  case(sel[1])
    1'b0: y = y1;
    1'b1: y = y2;
  endcase
end
endmodule
