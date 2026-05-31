`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2025 02:36:03 PM
// Design Name: 
// Module Name: sipo
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


module sipo(data_in, data_out, clk, reset);

input data_in;
input clk, reset;
output reg [3:0]data_out;
always @(posedge clk)
begin
  if (reset)
    data_out = 4'b0000;
  else
      begin
        data_out[3:0] <= data_out >> 1;
        data_out[3] <= data_in;
        //right shift
        /*data_out[3:0] <= data_out << 1;
        data_out[0] <= data_in;*/
        //left shift
        //data_out[3:0] <= {data_out[3:1],data_in};
      end
end 
endmodule
