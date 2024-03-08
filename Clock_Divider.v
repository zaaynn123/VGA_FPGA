`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:59:16 03/06/2024 
// Design Name: 
// Module Name:    Clock_Divider 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Clock_Divider(
clock_in,clock_out
    );
input clock_in; 
output reg clock_out;
reg[2:0] counter=3'd0;
parameter DIVISOR = 3'd4;
always @(posedge clock_in)
begin
 counter <= counter + 3'd1;
 if(counter>=(DIVISOR-1))
  counter <= 3'd0;
  clock_out <= (counter<DIVISOR/2)?1'b1:1'b0;
end

endmodule
