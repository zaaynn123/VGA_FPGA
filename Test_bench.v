`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:20:03 03/06/2024
// Design Name:   Top
// Module Name:   D:/New folder/VGA_Interface/Test_bench.v
// Project Name:  VGA_Interface
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_bench;

	// Inputs
	reg clk;

	// Outputs
	wire Hsynq;
	wire Vsynq;
	wire [3:0] Red;
	wire [3:0] Green;
	wire [3:0] Blue;
	wire clk25;
	wire [15:0] reg1;
	wire [15:0] reg2;


	// Instantiate the Unit Under Test (UUT)
	Top uut (
		.clk(clk), 
		.Hsynq(Hsynq), 
		.Vsynq(Vsynq), 
		.Red(Red), 
		.Green(Green), 
		.Blue(Blue),
		.clk25(clk25),
		.reg1(reg1),
		.reg2(reg2)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
	end
	
	always #5 clk = ~clk;
      
endmodule

