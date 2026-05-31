`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2025 09:52:09 PM
// Design Name: 
// Module Name: mod6_counter
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


module mod6_counter(clk ,reset ,dout);
    output [2:0] dout ;
    reg [2:0] dout ;
    
    input clk ;
    wire clk ;
    input reset ;
    wire reset ;
    
    initial dout = 0;
    
    always @ (posedge (clk)) begin
     if (reset)
      dout <= 0;
     else if (dout<5)
      dout <= dout + 1;
     else
      dout <= 0;
    end
          
    endmodule
endmodule
