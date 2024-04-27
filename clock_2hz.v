`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:47:10 11/22/2023 
// Design Name: 
// Module Name:    clock_2hz 
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
module clock_2hz
#(parameter N= 30, M = 25000000) // for 50Mhz
( input wire clk,rs,
 output wire f
 );
// signal declaration
reg [N-1:0] r_reg;
wire [N-1:0] r_next;
// body, register
always @(posedge clk,posedge rs)
if(rs)
r_reg<=0;
else
r_reg<=r_next;

assign r_next = (r_reg>=M)?0:r_reg + 1;

//assign f=(r_reg<M/2)?1:0;
assign f=r_reg[23];
endmodule
