`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2025 11:10:49 AM
// Design Name: 
// Module Name: mux2x1_case_tb
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


module mux2x1_case_tb();

reg a;
reg b;
reg s;

mux2x1_case mu1 (.a(a),.b(b),.s(s),.y(y));

initial 
begin

a = 1'b0; b = 1'b0; s = 1'b0;
#10 a = 1'b1; b = 1'b0; s = 1'b1;
#10 a = 1'b0; b = 1'b1; s = 1'b0;
#10 a = 1'b1; b = 1'b1; s = 1'b1;
#10;$stop;


$finish;
end
endmodule
