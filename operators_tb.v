`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/05/2025 04:11:35 PM
// Design Name: 
// Module Name: operators_tb
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


module operators_tb();

wire y1,y2,y3,y4,y5,z,z1,z2,v,r;
reg a,b,c;

operators op1 (a,b,c,y,y1,y2,y3,y4,y5,z,z1,z2,v,r);

initial 
begin 
a = 9'b101101000;
b = 9'b011101011;
c = 9'b001011101;
//#10 ;
#20;
$finish;
end
endmodule
