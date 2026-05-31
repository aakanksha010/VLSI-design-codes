`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2025 04:15:42 PM
// Design Name: 
// Module Name: decoder4x16_tb
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


module decoder4x16_activelow_w_2x4_tb();

reg en;
reg [3:0]sel;
wire [15:0]y_out;

decoder4x16_activelow_w_2x4 decm(sel,en,y_out);

initial
begin
sel[3:0] = 4'b0000; en = 1'b1;
#10 sel[3:0] = 4'b0001; en = 1'b0;
#10 sel[3:0] = 4'b0010; en = 1'b0;
#10 sel[3:0] = 4'b0011; en = 1'b0;
#10 sel[3:0] = 4'b0100; en = 1'b0;
#10 sel[3:0] = 4'b0101; en = 1'b0;
#10 sel[3:0] = 4'b0110; en = 1'b0;
#10 sel[3:0] = 4'b0111; en = 1'b0;
#10 sel[3:0] = 4'b1000; en = 1'b0;
#10 sel[3:0] = 4'b1001; en = 1'b0;
#10 sel[3:0] = 4'b1010; en = 1'b0;
#10 sel[3:0] = 4'b1011; en = 1'b0;
#10 sel[3:0] = 4'b1100; en = 1'b0;
#10 sel[3:0] = 4'b1101; en = 1'b0;
#10 sel[3:0] = 4'b1110; en = 1'b0;
#10 sel[3:0] = 4'b1111; en = 1'b0;
#20;
$finish;
end
endmodule
