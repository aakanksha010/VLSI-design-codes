`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2025 09:08:58 AM
// Design Name: 
// Module Name: counter_tb
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


module counter_tb();

reg [2:0]data_in; 
reg rst,load_en;
wire [2:0] q_out;
//reg up_down;
reg clk = 0;

//counter_up_3bit cu3(data_in,clk,rst,load_en,q_out);
counter_down_3bit cd3(data_in,clk,rst,load_en,q_out);
//counter_up_down cud3(data_in,clk,rst,load_en,up_down,q_out);

always #5 clk = ~clk;
initial
begin
data_in = 3'b000; rst = 1'b1; load_en = 1'b1; //up_down = 1'b1;
#10 data_in = 3'b001; rst = 1'b0; load_en = 1'b0; //up_down = 1'b1;
#10 data_in = 3'b001; rst = 1'b0; load_en = 1'b1; //up_down = 1'b1;
#10 data_in = 3'b001; rst = 1'b0; load_en = 1'b0; //up_down = 1'b1;
#10 data_in = 3'b001; rst = 1'b0; load_en = 1'b0; //up_down = 1'b1;
#10 data_in = 3'b001; rst = 1'b0; load_en = 1'b0; //up_down = 1'b0;
#10 data_in = 3'b001; rst = 1'b0; load_en = 1'b0; //up_down = 1'b0;
#10 data_in = 3'b001; rst = 1'b0; load_en = 1'b0; //up_down = 1'b0;
#10
$finish;
end
endmodule
