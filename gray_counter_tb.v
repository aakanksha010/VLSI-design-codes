`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2025 11:52:17 AM
// Design Name: 
// Module Name: gray_counter_tb
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


module gray_counter_tb();

reg [3:0]data_in;
//reg [3:0]count;
reg clk = 0;
reg rst,load_en;
wire [3:0]data_out;

gray_counter gc1(data_in,clk,rst,load_en,data_out);

always #5 clk = ~clk;
initial
begin
data_in = 4'b0000; rst = 1'b1; load_en = 1'b0;
#10 data_in = 4'b0001; rst = 1'b0; load_en = 1'b1;
#10 data_in = 4'b0010; rst = 1'b0; load_en = 1'b0;
#10 data_in = 4'b0011; rst = 1'b0; load_en = 1'b1;
/*#10 data_in = 4'b0100; rst = 1'b0; load_en = 1'b0;
#10 data_in = 4'b0101; rst = 1'b0; load_en = 1'b0;
#10 data_in = 4'b0110; rst = 1'b0; load_en = 1'b0;
#10 data_in = 4'b0111; rst = 1'b0; load_en = 1'b0;
#10 data_in = 4'b1000; rst = 1'b0; load_en = 1'b0;
#10 data_in = 4'b1001; rst = 1'b0; load_en = 1'b0;
#10 data_in = 4'b1010; rst = 1'b0; load_en = 1'b0;
#10 data_in = 4'b1011; rst = 1'b0; load_en = 1'b0;
#10 data_in = 4'b1100; rst = 1'b0; load_en = 1'b0;
#10 data_in = 4'b1101; rst = 1'b0; load_en = 1'b0;
#10 data_in = 4'b1110; rst = 1'b0; load_en = 1'b0;
#10 data_in = 4'b1111; rst = 1'b0; load_en = 1'b0;
//#10 data_in = 4'b0000; rst = 1'b0; load_en = 1'b0;
//#10 data_in = 4'b0000; rst = 1'b0; load_en = 1'b0;*/
#10
$finish;
end
endmodule
