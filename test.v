`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:14:41 11/29/2023
// Design Name:   modultop
// Module Name:   /home/ise/cuoiky1/test.v
// Project Name:  cuoiky1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: modultop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg clk;
	reg reset;
	reg btn;
	reg stop;
	reg speed;
	reg [1:0] mode;

	// Outputs
	wire lcd_rs;
	wire lcd_rw;
	wire lcd_e;
	wire lcd_4;
	wire lcd_5;
	wire lcd_6;
	wire lcd_7;
	wire [3:0] ONES;
	wire [3:0] TENS;
	wire [1:0] HUNDREDS;
	wire [7:0] LED;

	// Instantiate the Unit Under Test (UUT)
	modultop uut (
		.clk(clk), 
		.reset(reset), 
		.btn(btn), 
		.stop(stop), 
		.speed(speed), 
		.mode(mode), 
		.lcd_rs(lcd_rs), 
		.lcd_rw(lcd_rw), 
		.lcd_e(lcd_e), 
		.lcd_4(lcd_4), 
		.lcd_5(lcd_5), 
		.lcd_6(lcd_6), 
		.lcd_7(lcd_7), 
		.ONES(ONES), 
		.TENS(TENS), 
		.HUNDREDS(HUNDREDS), 
		.LED(LED)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		btn = 0;
		stop = 0;
		speed = 0;
		mode = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

