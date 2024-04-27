`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:42:48 11/29/2023 
// Design Name: 
// Module Name:    chiaxung 
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
module chiaxung(
input clkx,
input frezx,
output clkz
 );

wire a;
wire b;

tanso5hz clk5hz (.clk5hz(clkx),.q5hz(a));
tanso10hz clk10hz (.clk10hz(clkx),.q10hz(b));

chon_xung mux (.clk5hz(a),.clk10hz(b),.frez(frezx),.clko(clkz));

endmodule 