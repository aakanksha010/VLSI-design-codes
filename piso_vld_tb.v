`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/30/2025 10:36:07 AM
// Design Name: 
// Module Name: piso_vld_tb
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


module piso_vld_tb();
reg clk,rst,wvld;
reg [7:0]wdata;
wire wready,sdo_vld;
wire sdo;
//clk = 0;
//rst = 0;
piso_vld put1(.clk(clk),
          .rst(rst),
          .wvld(wvld),
          .wdata(wdata),
          .wready(wready),
          .sdo(sdo),
          .sdo_vld(sdo_vld));
          
always #5 clk = ~clk;
initial
begin
clk = 0;
rst = 0;
wvld = 0;
#10
rst = 1;
wdata = 8'b10101010;
#10 
wvld = 1;
#80
wdata = 8'b11111100;
wvld = 0;
#30
wdata = 8'b10111011;
wvld = 1;
#90
#10
$finish;
end
endmodule
