`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2022 11:26:56 AM
// Design Name: 
// Module Name: fa_st_tb
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


module fa_st_tb();
reg a,b,d;
wire s,c;
fa_st m6(s,c,a,b,d);
initial
begin
a<=1'b0;b<=1'b0;d=1'b0;
#10 a<=1'b0;b<=1'b0;d=1'b1;
#10 a<=1'b0;b<=1'b1;d=1'b0;
#10 a<=1'b0;b<=1'b1;d=1'b1;
#10 a<=1'b1;b<=1'b0;d=1'b0;
#10 a<=1'b1;b<=1'b0;d=1'b1;
#10 a<=1'b1;b<=1'b1;d=1'b0;
#10 a<=1'b1;b<=1'b1;d=1'b1;
#10 $stop;
end
endmodule
