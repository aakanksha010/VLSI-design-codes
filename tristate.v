`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2025 02:45:31 PM
// Design Name: 
// Module Name: tristate
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


module tristate(data_in,enable,data_out);
    
  input [3:0] data_in;
  input enable;
  output [3:0] data_out;
  reg [3:0] data_out;
  
  always@(data_in or enable)
   if(enable)
     data_out = data_in;
   else
     data_out = 4'bzzzz;

endmodule
