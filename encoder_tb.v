`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2025 04:57:25 PM
// Design Name: 
// Module Name: encoder_tb
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


module encoder_tb();

reg a;
//reg in_a;
wire y;
//wire out_y;

priorityencoder4x2 pen1(in_a, out_y);
encoder4x2 en1(a,y);

initial
begin
a = 4'b0000; 
#10 a = 4'b0001; 
#10 a = 4'b0010; 
#10 a = 4'b0100; 
#10 a = 4'b1000;
//#10 in_a = 4'b0000;
//#10 in_a = 4'b0001;
//#10 in_a = 4'b0010;
//#10 in_a = 4'b0100;
//#10 in_a = 4'b1000;
#20;
$finish;
end
endmodule
