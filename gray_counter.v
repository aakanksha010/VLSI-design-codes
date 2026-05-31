`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2025 11:29:58 AM
// Design Name: 
// Module Name: gray_counter
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


module gray_counter(data_in,clk,rst,load_en,data_out);

input [3:0]data_in;
reg [3:0]count;
input clk,rst,load_en;//load_en is internally 4 bits
output reg [3:0]data_out;
reg g2,g1,g0;

always @(posedge clk)
begin
  if (rst)
  begin
    count <= 4'b0000;
    {g2,g1,g0} <= 3'b000;
    data_out <= 4'b0000;
  end
    
  else if (load_en)
  begin
    count <= data_in;
    {g2,g1,g0} <= {data_in[2],data_in[1],data_in[0]};
    data_out <= {data_in[3],data_in[2],data_in[1],data_in[0]};
  end
  
  else
  begin
    count <= count + 1'b1;
    g2 <= count[3] ^ count[2];
    g1 <= count[2] ^ count[1];
    g0 <= count[1] ^ count[0];
    data_out <= {count[3],g2,g1,g0};
  end 
end
endmodule
