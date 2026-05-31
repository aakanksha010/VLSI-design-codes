`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2022 12:29:32 PM
// Design Name: 
// Module Name: or_bh_tb
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


module or_bh_tb();
reg a,b;
wire y;
or_bh i2(y,a,b);
initial
begin
a<=1'b0;b<=1'b0;
#10 a<=1'b0;b=1'b1;
#10 a<=1'b1;b<=1'b0;
#10 a<=1'b1;b<=1'b1;
#10 $stop;
end
endmodule
