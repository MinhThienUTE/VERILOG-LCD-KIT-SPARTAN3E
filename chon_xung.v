`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:54:07 11/29/2023 
// Design Name: 
// Module Name:    chon_xung 
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
module chon_xung(
input clk5hz,
input clk10hz,
input frez,
output clko
);

reg s;

always @*
begin
	case (frez)
	0: s <= clk5hz;
	1: s <= clk10hz;
	endcase
end

assign clko = s;

endmodule
