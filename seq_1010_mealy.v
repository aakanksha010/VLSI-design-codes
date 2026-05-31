`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/24/2025 11:54:24 AM
// Design Name: 
// Module Name: seq_1010_mealy
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


module seq_1010_mealy(clk,reset,data_in,y_out);
 input clk;
 input reset;
 input data_in;
 output reg y_out;
 reg [1:0]state;
 parameter s0 = 2'b00,s1 = 2'b01, s2 = 2'b10, s3 = 2'b11;
 //parameter s1 = 1;
 //parameter s2 = 2;
 //parameter s3 = 3;
 
 always @(posedge clk or reset)
 begin
   if (reset)
     state <= s0;
   else
     case (state)
       s0: if (data_in)
             state <= s1;
           else
             state <= s0;
             
       s1: if (~data_in)
             state <= s2;
           else
             state <= s1;
             
       s2: if (data_in)
             state <= s3;
           else
             state <= s2;
             
       s3: if (~data_in)
             state <= s0;
           else 
             state <= s3;
     endcase        
 end
         
 always @(state, data_in)
   case (state)
     s0 : //if(data_in)
            y_out = 0;
          //else
            //y_out <= 2'b10;
            
     s1 : //if(~data_in)
            y_out = 0;
          //else
            //y_out <= 2'b00;
            
     s2 : //if(data_in)
            y_out = 0;
          //else
            //y_out <= 2'b01;
            
     s3 : if(~data_in)
            y_out = 1;
          else
            y_out = 0;
   endcase        
endmodule
