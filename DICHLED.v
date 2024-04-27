`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:47:14 11/22/2023 
// Design Name: 
// Module Name:    DICHLED 
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
module DICHLED(
input clk,
input [1:0] mode,
input reset,
input stop,
output [5:0] q
    );

reg [5:0] r_reg;
reg a;
reg i;
reg j;
reg x;
reg y;

initial r_reg = 6'b000000;
initial a = 1;
initial i = 1;
initial x = 1;
initial y = 1;

always @(posedge clk, posedge reset, posedge stop)
begin
	if (stop)
	r_reg<=r_reg;
	else
	if (reset)
	begin
		a <= 1;
		i <= 1;
		x <= 1;
		y <= 1;
		r_reg <= 6'b100000;
	end
	else

	if (mode == 2'b11)
	begin
	x <= 1;
	y <= 1;
		if (i)
		begin
			if (a)
			begin
				if (r_reg[0])
				begin
					r_reg <= (r_reg << 1);
					a <= 0;
				end
				else
					r_reg <= (r_reg >> 1) + 6'b100000;
			end
			else
			if (a == 0)
			begin
				if (r_reg[5] == 0)
				begin
					r_reg <= (r_reg << 1);
					a <=1;
				end
				else
					r_reg <= (r_reg << 1);
			end
		end
		else
		
		begin
			if (a)
			begin
				if (r_reg[0])
				begin
					r_reg <= (r_reg << 1);
					a <= 0;
				end
				else
					r_reg <= (r_reg >> 1) + 6'b100000;
			end
			else
			if (a == 0)
			begin
					r_reg <= (r_reg << 1);
			end
		end
	end
	else

	if (mode == 2'b00)
	begin
		a <= 1;
		i <= 1;
		x <= 1;
		y <= 1;
		r_reg <= 6'b010001;
		if ( r_reg == 6'b001000)
			r_reg <= 6'b010001;
		else
		begin
			r_reg <= r_reg - 6'b000001;
			end
	end
	else

	if (mode == 2'b01)
	begin
		a <= 1;
		i <= 1;
		if(r_reg==6'b000000)
		begin
			r_reg <= 6'b011111;
		end
		else 
			r_reg <= r_reg >>1;
		end

	
	
	else
	if(mode == 2'b10)
	begin
		a <= 1;
		i <= 1;
		x <= 1;
		y <= 1;
		if ( r_reg == 6'b111111)
			r_reg <= 6'b000000;
		else
		begin
			r_reg[2:0]<=(r_reg[2:0]<<1)+3'b001;
			r_reg[5:3]<=(r_reg[5:3]>>1)+3'b100;
		end
	end
end
assign q = r_reg;
endmodule
