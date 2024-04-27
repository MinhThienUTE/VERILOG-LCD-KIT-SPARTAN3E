`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:02:20 11/23/2023 
// Design Name: 
// Module Name:    divxung 
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
module divxung(
input clk2hz,
input clk5hz,
input clk10hz,
input [1:0] SPEED,
output clko
    );
wire f;

always @(clk,SPEED) begin
	case(SPEED)
	0: f<=clk2hz;
	1: f<=clk5hz;
	2: f<=clk10hz;
	endcase
end
assign clko=f;
endmodule
