`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/05/2025 05:19:32 PM
// Design Name: 
// Module Name: op_concat_and_reduce_tb
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


module op_concat_and_reduce_tb();
reg a,b;
wire y,z;

op_concat_and_reduce opcr1 (
        . a(a),.b(b),.y(y),.z(z));

initial
begin
a = 3'b110;
b = 3'b011;
#10
$finish;
end
endmodule
