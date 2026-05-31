`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2025 09:19:17 PM
// Design Name: 
// Module Name: ripple_counter
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


module ripple_counter(clk,toggle_in,rst,count_out);
input clk,toggle_in,rst;
output [3:0]count_out;
reg [3:0]count_out;
wire c0,c1,c2;
assign c0 = count_out[1];
assign c1 = count_out[2];
assign c2 = count_out[3];

always @(posedge clk or negedge rst)
  if(rst == 1'b0)
    count_out[0] <= 1'b0;
    
  else if (toggle_in == 1'b1)
    count_out[0] <= ~count_out[0];
    

always @(posedge clk or negedge c0)
  if(rst == 1'b0)
    count_out[1] <= 1'b0;
        
  else if (toggle_in == 1'b1)
    count_out[1] <= ~count_out[1];

always @(posedge clk or negedge c1)
  if(rst == 1'b0)
    count_out[2] <= 1'b0;
            
  else if (toggle_in == 1'b1)
    count_out[2] <= ~count_out[2];
    
always @(posedge clk or negedge c2)
   if(rst == 1'b0)
     count_out[3] <= 1'b0;
        
   else if (toggle_in == 1'b1)
     count_out[3] <= ~count_out[3];
endmodule
