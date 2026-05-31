`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2025 02:19:05 PM
// Design Name: 
// Module Name: decoder3x8
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


module decoder3x8(x,en,y);
input [2:0] x;
input en;
output [7:0] y;
reg [7:0] y;

always @(x or en)
begin
  if (en)
    case (x)
      3'b000 : y = 8'b0000_0001;
      3'b001 : y = 8'b0000_0010;
      3'b010 : y = 8'b0000_0100;
      3'b011 : y = 8'b0000_1000;
      3'b100 : y = 8'b0001_0000;
      3'b101 : y = 8'b0010_0000;
      3'b110 : y = 8'b0100_0000;
      3'b111 : y = 8'b1000_0000;
    endcase
  else
    y = 8'b0000_0000;
end      
endmodule
