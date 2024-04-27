`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:25:30 11/28/2023
// Design Name:   btn
// Module Name:   /home/ise/cuoiky1/testbtn.v
// Project Name:  cuoiky1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: btn
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbtn;

	// Inputs
	reg clk;
	reg rs;
	reg btn;

	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	btn uut (
		.clk(clk), 
		.rs(rs), 
		.btn(btn), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rs = 0;
		btn = 0;

		// Wait 100 ns for global reset to finish
		#10;
		btn=1;
		#100;
		btn=0;
		#100;
		
        
		// Add stimulus here

	end
      
endmodule

