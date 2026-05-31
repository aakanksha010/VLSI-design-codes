`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2025 05:12:47 PM
// Design Name: 
// Module Name: alu_tb
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


module alu_tb();

reg [3:0]a;
reg [3:0]b;
reg [1:0]op_code;
wire [3:0]y; 

alu al1(a,b,op_code,y);

initial
begin
a = 4'b1010; b = 4'b0111; op_code = 2'b00;
#10 a = 4'b1010; b = 4'b0111; op_code = 2'b10;
#10 a = 4'b1010; b = 4'b0111; op_code = 2'b01;
#10 a = 4'b1010; b = 4'b0111; op_code = 2'b11;
#10 a = 4'b1010; b = 4'b0111; //op_code = 2'b00;
#10;
$finish;
end
endmodule
