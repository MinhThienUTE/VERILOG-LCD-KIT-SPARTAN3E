`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:00:02 11/22/2023 
// Design Name: 
// Module Name:    blink 
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
module blink(
input clk,
input [7:0] q,
output [1:0] data 
    );
reg [1:0] r_reg;

always @(posedge clk)
begin
	if(q==6'b001000)
	begin
		r_reg <= 2'b11;
	end
	else
		r_reg <= 2'b00;
end
assign data=r_reg;
endmodule
