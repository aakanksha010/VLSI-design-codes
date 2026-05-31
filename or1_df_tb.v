`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2022 12:03:27 PM
// Design Name: 
// Module Name: or1_df_tb
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


module or1_df_tb();
reg a,b;
wire y;
or1_df x1(y,a,b);
initial
begin
a<=1'b0;b<=1'b0;
#10 a<=1'b0;b=1'b1;
#10 a<=1'b1;b<=1'b0;
#10 a<=1'b1;b<=1'b1;
#10 $stop;
end
endmodule
