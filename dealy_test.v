`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2025 05:38:34 PM
// Design Name: 
// Module Name: dealy_test
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


module delay_test(a,b);
input a;
input b;
 #2 a = 1'b1;
 #3 b = 1'b0;
 #5 $display("%t : %b",$time,a);
 #15 $display("%t : %b",$time,b);
 end
endmodule
