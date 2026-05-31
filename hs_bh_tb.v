`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2022 12:20:13 PM
// Design Name: 
// Module Name: hs_bh_tb
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


module hs_bh_tb();
reg x,y;
wire d,b;
hs_bh n8(d,b,x,y));
initial
begin
x<=1'b0;y<=1'b0;
#10 x<=1'b0;y<=1'b1;
#10 x<=1'b1;y<=1'b0;
#10 x<=1'b1;y<=1'b1;
#10 $stop;
end
endmodule
