`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/05/2025 04:04:18 PM
// Design Name: 
// Module Name: operators
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


module operators(a,b,c,y,y1,y2,y3,y4,y5,z,z1,z2,v,r);
input [8:0] a,b,c;
output [3:0] y,z;
output [4:0] y1,z1;
output [5:0] y3;
output [4:0] y2,y4,y5,z2;
output [6:0] v,r;

reg [3:0] y,z;
reg [4:0] y1,z1;
reg [5:0] y3;
reg [3:0] y2,y4,y5,z2;
reg [8:0] v,r;

parameter s = 2;

always @(a or b or c)
  begin 
  //Arithmatic Operators
  y1 = a + b;
  y3 = a - b;
  y4 = a * b;
  
  //Logical Operators
  if ((a > b)||(a == b) && (b < c))
    y = 1;
  else
    y = 0;
    
  //Equality Operators
  y2 = a==b;
  y5 = a!=b;
  if (a == b)
    y = a;
  else
    y = b;
    
  //Sign operators 
  z = -a+-b;
  z1 = a*-b;
  
  //Bitwise Operators
  v[0] = (a[0] & b[0]);
  v[1] = !(a[1] & b[1]);
  v[2] = (a[2] | b[2]);
  v[3] = !(a[3] | b[3]);
  v[4] = (a[4] ^ b[4]);
  v[5] = (a[5] ~^ b[5]);
  v[6] = !(a[6]);
  v[7] = !(b[6]);
  
  //Relational Operators
  r[0] = a < b;
  r[1] = a <= b;
  //r[2] = a => b;
  r[3] = a > b; 
  if (a > b)
    r[4] = 1;
  else
    r[4] = 0; 
    
  //Shift operators
  r[5] = a >> 2;
  r[6] = a << 2;
  r[7] = b << s;
  end 
endmodule
