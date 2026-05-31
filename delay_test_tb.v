`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2025 05:39:21 PM
// Design Name: 
// Module Name: delay_test_tb
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


module delay_test_tb();

delay_test d1 (.a(a),.b(b));
initial 
begin
   #30;  // Let simulation run past last $display
   $finish;
  end
endmodule
