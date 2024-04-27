`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:55:55 11/29/2023
// Design Name:   DICHLED
// Module Name:   /home/ise/cuoiky1/testled.v
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

module testled;

	// Inputs
	reg clk;
	reg [1:0] mode;
	reg reset;

	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	DICHLED uut (
		.clk(clk), 
		.mode(mode), 
		.reset(reset), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		mode = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#2000;
		mode=1;
		#2000;
		mode=2;
		#2000;
		mode=3;
		#2000;
		
        
		// Add stimulus here

	end
	always begin
	clk=~clk;
	#10;
	end
      
endmodule

