`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:05:17 11/23/2023 
// Design Name: 
// Module Name:    tanso10hz 
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
module tanso10hz
#(parameter M=50000000)
(
input clk10hz,
output q10hz
    );	 
	 
reg [30:0] r_reg;
wire [30:0] r_next;

initial r_reg = 0;
always @(posedge clk10hz)
	begin
		r_reg = r_next;
	end
assign r_next = (r_reg==M)?0:r_reg+1;
assign q10hz = (r_reg<=M/2)?0:1;


endmodule
