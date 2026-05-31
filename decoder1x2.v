`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2025 01:31:27 PM
// Design Name: 
// Module Name: decoder1x2
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


module decoder1x2(s,en,y1,y0);

input s;
input en;
output y1,y0;
reg y1,y0;

always @(s or en)
begin
  if (en)
    case (s)
      1'b0: {y1,y0} = 2'b01;
      1'b1: {y1,y0} = 2'b10;
    endcase
  else
    {y1,y0} = 2'b00;
end
endmodule
