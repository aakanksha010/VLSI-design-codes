`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2025 11:32:28 AM
// Design Name: 
// Module Name: mux4x1_priority_tb
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


module mux4x1_priority_tb();

reg a,b,c,d,s,s0,s1;
wire y;
//reg a,b,c,d;
//reg [1:0]s;

mux4x1_priority dut1(.a(a),
                     .b(b),
                     .c(c),
                     .d(d),
                     .s(s),
                     .s0(s0),
                     .s1(s1),
                     .y(y));
always  #10 s = ~s;                 
initial 
begin
a = 1'b1;
b = 1'b0;
c = 1'b1;
d = 1'b0;
s=2'b0;
s0 = 1'b0; s1 = 1'b0; 
#10 s0 = 1'b0; s1 = 1'b1; 
#10 s0 = 1'b1; s1 = 1'b0;
#10 s0 = 1'b1; s1 = 1'b1; 
#10
#10 s = 2'b00;
#10 s = 2'b01;
#10 s = 2'b10;
#10 s = 2'b11;
$stop;
//#20 
$finish;
end
endmodule
