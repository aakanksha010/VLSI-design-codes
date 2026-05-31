`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2025 01:32:01 PM
// Design Name: 
// Module Name: decoder1x2_tb
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


module decoder1x2_tb();

reg s,en;

decoder1x2 de1(s,en,y1,y0);

initial
begin
{en,s} = 2'b01;
#10 {en,s} = 2'b11;
#10 {en,s} = 2'b10;
#10 {en,s} = 2'b11;
#10 {en,s} = 2'b10;
#20
$finish;
end
endmodule
