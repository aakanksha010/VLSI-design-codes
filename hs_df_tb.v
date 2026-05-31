`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2022 11:34:05 AM
// Design Name: 
// Module Name: hs_df_tb
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


module hs_df_tb();
reg x,y;
wire d,b;
hs_df n7(d,b,x,y);
initial
begin
x<=1'b0;y<=1'b0;
#10 x<=1'b0;y<=1'b1;
#10 x<=1'b1;y<=1'b0;
#10 x<=1'b1;y<=1'b1;
#10 $stop;
end
endmodule

