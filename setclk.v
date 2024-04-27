`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:38:12 11/29/2023 
// Design Name: 
// Module Name:    setclk 
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
module setclk(
input clk,
input speed,
input rs,
output clko
 );

wire a;
wire b;
wire c;
divCLK #(25000000) clk2hz (.clki(clkx),.rsCLK(rsx),.clko(a));
divCLK #(10000000) clk5hz (.clki(clkx),.rsCLK(rsx),.clko(b));
divCLK #(5000000) clk10hz (.clki(clkx),.rsCLK(rsx),.clko(c));

divxung mux (.clk5hz(a),.clk10hz(b),.frez(frezx),.clko(clkz))


endmodule
