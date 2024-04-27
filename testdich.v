`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:28:06 11/23/2023
// Design Name:   DICHLED
// Module Name:   /home/ise/cuoiky1/testdich.v
// Project Name:  cuoiky1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DICHLED
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testdich;

	// Inputs
	reg clk;
	reg reset;
	reg [1:0] mode;

	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	DICHLED uut (
		.clk(clk), 
		.reset(reset), 
		.mode(mode), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		mode = 1;

		// Wait 100 ns for global reset to finish
		#100;
		mode=2;
		#10000;
		mode=1;
		#100;
		reset=1;
		#10;
		reset=0;
		#10;
		mode=2;
		#1000;
        
		// Add stimulus here

	end
		always begin
		clk=~clk;
		#10;
		end
      
endmodule

