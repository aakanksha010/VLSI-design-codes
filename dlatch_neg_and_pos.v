`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2025 11:46:39 AM
// Design Name: 
// Module Name: dlatch_neg_and_pos
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


module dlatch_neg_and_pos(d,le,q);
input d,le;
output q;

reg q;

always @(le or d)
begin
  if (le)
//  if (~le)
    q <= d;
  
  //else
    //q <= 1'bx;
    //q <= 1'b0;
    //q <= 1'b1;
end
endmodule
