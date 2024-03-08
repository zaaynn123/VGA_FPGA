`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:54:00 03/06/2024 
// Design Name: 
// Module Name:    Top 
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
module Top(
    input clk,
    output Hsynq,
    output Vsynq,
    output [2:0] Red,
    output [2:0] Green,
    output [1:0] Blue
    );
	 
wire clk_25M;
wire enable_V_Counter;
wire [15:0] H_Count_Value;
wire [15:0] V_Count_Value;

Clock_Divider VGA_Clock_gen (clk, clk_25M);
horizental_counter VGA_Horiz (clk_25M, enable_V_Counter, H_Count_Value);
vertical_counter VGA_Verti (clk_25M, enable_V_Counter, V_Count_Value);

assign Hsynq = (H_Count_Value < 96) ? 1'b1:1'b0;
assign Vsynq = (V_Count_Value < 2) ? 1'b1:1'b0;

assign Red = (H_Count_Value <= 520 && H_Count_Value > 143 && V_Count_Value <= 300 && V_Count_Value > 34) ? 3'h3: (H_Count_Value < 784 && H_Count_Value > 520 && V_Count_Value < 515 && V_Count_Value > 400) ? 3'h6:3'h2;
assign Green = (H_Count_Value <= 320 && H_Count_Value > 143 && V_Count_Value < 515 && V_Count_Value > 34) ? 3'h3:3'h0;
assign Blue = (H_Count_Value <= 320 && H_Count_Value > 143 && V_Count_Value < 515 && V_Count_Value > 34) ? 2'h3:2'h0;

endmodule
