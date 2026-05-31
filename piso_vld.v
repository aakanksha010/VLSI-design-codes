`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/25/2025 11:22:37 PM
// Design Name: 
// Module Name: piso_vld
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


module piso_vld (clk,rstn,wdata,wvld,sdo,sdo_vld,wready);

input clk,rstn;
input [7:0]wdata;
input wvld;
output reg wready,sdo_vld;
output wire sdo;
reg [7:0]shift_reg;
//reg shift, shift_en;
reg [3:0]count;
reg pr_state, next_state;

parameter IDLE = 0;
parameter LOAD = 1;
parameter SHIFT = 2;

//present state logic block
always @(posedge clk or negedge rstn)
begin
  if (~rstn)
    pr_state <= IDLE;
  else
    pr_state <= next_state;
end

//next state logic block
always @(pr_state,wvld)
begin
    case(pr_state)
      IDLE: if(wvld)
            begin
              wready <= 1;
              next_state <= LOAD;
            end
            else
              next_state <= IDLE;
      LOAD: begin 
            //shift_reg <= wdata;
            wready <= 0;
            sdo_vld <= 0;
            count <= 0;
            next_state <= SHIFT;
            end
           
      SHIFT: if(count < 8)
               begin
               //sdo <= shift_reg[0];
               //shift_reg = shift_reg >> 1;
               //count = count + 1;
               wready <= 0;
               sdo_vld <= 1;
               end
             else
             begin
               begin
               wready <= 1;
               sdo_vld <= 0;
               //count <= 0;
               end
               if (wvld)
                 next_state <= LOAD;
               else
                 next_state <= IDLE;
               end 
      default: next_state <= IDLE;
    endcase
  end 
  
  always @(posedge clk or negedge rstn)
  begin
    if (~rstn)
      shift_reg = 0;
    else
    begin
        if(pr_state == LOAD)
          shift_reg <= wdata;
        else if(pr_state == SHIFT)
        begin
          
          if (count < 8)
            shift_reg <= shift_reg >> 1;
            count <= count + 1
        else
          count <= 0;
      end
      else
       pr_state <= IDLE;
   end
   end
assign sdo = shift_reg[0];           
endmodule

