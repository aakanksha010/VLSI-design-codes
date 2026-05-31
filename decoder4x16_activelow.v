`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2025 03:16:40 PM
// Design Name: 
// Module Name: decoder4x16_activelow
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


module decoder4x16_activelow_w_2x4(sel,en,y_out);
input [3:0]sel;
input en;
output [15:0]y_out;

reg [15:0]y_out;
reg [3:0]y_temp_out;

always @(sel[3:2] or en)
begin
  if (~en)
    case (sel[3:2])
      2'b00: y_temp_out = 4'b1110;
      2'b01: y_temp_out = 4'b1101;
      2'b10: y_temp_out = 4'b1011;
      2'b11: y_temp_out = 4'b0111;
    endcase
  
  else
    y_temp_out = 4'b1111;
end

always @(sel[1:0] or y_temp_out[0])
begin
  if (~y_temp_out[0])
    case (sel[1:0])
      2'b00: y_out[3:0] = 4'b1110;
      2'b01: y_out[3:0] = 4'b1101;
      2'b10: y_out[3:0] = 4'b1011;
      2'b11: y_out[3:0] = 4'b0111;
    endcase
  
  else
    y_out[3:0] = 4'b1111;
end

always @(sel[1:0] or y_temp_out[1])
begin
  if (~y_temp_out[1])
    case (sel[1:0])
      2'b00: y_out[7:4] = 4'b1110;
      2'b01: y_out[7:4] = 4'b1101;
      2'b10: y_out[7:4] = 4'b1011;
      2'b11: y_out[7:4] = 4'b0111;
    endcase
  
  else
    y_out[7:4] = 4'b1111;
end 

always @(sel[1:0] or y_temp_out[2])
begin
  if (~y_temp_out[2])
    case (sel[1:0])
      2'b00: y_out[11:8] = 4'b1110;
      2'b01: y_out[11:8] = 4'b1101;
      2'b10: y_out[11:8] = 4'b1011;
      2'b11: y_out[11:8] = 4'b0111;
    endcase
  
  else
    y_out[11:8] = 4'b1111;
end

always @(sel[1:0] or y_temp_out[3])
begin
  if (~y_temp_out[3])
    case (sel[1:0])
      2'b00: y_out[15:12] = 4'b1110;
      2'b01: y_out[15:12] = 4'b1101;
      2'b10: y_out[15:12] = 4'b1011;
      2'b11: y_out[15:12] = 4'b0111;
    endcase
  
  else
    y_out[15:12] = 4'b1111;
end               
endmodule
