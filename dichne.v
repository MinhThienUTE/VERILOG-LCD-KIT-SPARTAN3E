`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:29:30 11/23/2023
// Design Name:   DICHLED
// Module Name:   /home/ise/cuoiky1/dichne.v
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

module dichne;

	// Inputs
	reg clk;
	reg reset;
	reg stop;
	reg [1:0] mode;

	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	DICHLED uut (
		.clk(clk), 
		.reset(reset), 
		//.stop(stop), 
		.mode(mode), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		stop = 0;
		mode = 0;


		// Wait 100 ns for global reset to finish
		#100;
		mode=0;
		#10000;
		stop=1;
		#300;
		stop=0;
		#10;
		mode=1;
		#100;
		stop=1;
		#400;
		stop=0;
		#10;
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
        
		// Add stimulus here
      
endmodule

