`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:16:06 11/29/2023
// Design Name:   blink
// Module Name:   /home/ise/cuoiky1/testblink.v
// Project Name:  cuoiky1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: blink
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testblink;

	// Inputs
	reg clk;
	reg [7:0] q;

	// Outputs
	wire [7:0] data;

	// Instantiate the Unit Under Test (UUT)
	blink uut (
		.clk(clk), 
		.q(q), 
		.data(data)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		q = 0;

		// Wait 100 ns for global reset to finish
		#100;
		q=21;
		
        
		// Add stimulus here

	end
	always begin
	clk=~clk;
	#10;
	end
      
endmodule

