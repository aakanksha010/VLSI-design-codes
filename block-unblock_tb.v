`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2025 05:29:37 PM
// Design Name: 
// Module Name: block-unblock_tb
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


module block_unblock_tb();
   wire x, y;
     block_unblock uut (.x(x), .y(y));
   
     initial 
     begin
       #1;  // Wait for initial block to run
       $display("Testbench: x = %b, y = %b", x, y);
       $finish;
     end
endmodule
