`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2025 09:29:31 PM
// Design Name: 
// Module Name: mem_rd_wr
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


module mem_rd_wr(data_in,clk,add,rd_wr,cs,data_out);

input clk,rd_wr;
input [7:0]data_in;
input [3:0]add;
output [7:0]data_out;
reg [7:0]data_out;
reg[7:0]mem[0:1023];

always @(posedge clk)
  if (cs == 1 && rd_wr == 1)//write operation
    mem[add] <= data_in;
    
always @(posedge clk)
  if (cs == 1 && rd_wr == 0) //read operation
    data_out <= mem[add];
endmodule
