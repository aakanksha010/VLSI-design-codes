`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2022 11:26:15 AM
// Design Name: 
// Module Name: xnor_bh_tb
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


module xnor_bh_tb();
reg a,b;
wire y;
xnor_bh i6(y,a,b);
initial
begin
a<=1'b0;b<=1'b0;
#10 a<=1'b0;b=1'b1;
#10 a<=1'b1;b<=1'b0;
#10 a<=1'b1;b<=1'b1;
#10 $stop;
end

endmodule
