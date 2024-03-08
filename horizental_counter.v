`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:58:22 03/06/2024 
// Design Name: 
// Module Name:    horizental_counter 
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
module horizental_counter(
    input clk_25Mhz,
	 output reg enable_V_Counter = 0,
    output reg [15:0] H_Count_Value = 0
    );
	 
    always@(posedge clk_25Mhz) begin
	    if (H_Count_Value < 799) begin
	        H_Count_Value <= H_Count_Value + 1;
		     enable_V_Counter <= 0;
	    end
		 else begin
		     H_Count_Value <= 0;
			  enable_V_Counter <= 1;
       end 	
     end		 

endmodule
