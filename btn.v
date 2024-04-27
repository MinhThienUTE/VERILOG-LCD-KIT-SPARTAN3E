`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:21:02 11/22/2023 
// Design Name: 
// Module Name:    btn 
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
module btn(
input clk, rs, btn,
output [7:0] q
);

reg [7:0] r_reg;
initial r_reg=8'b00010001;
reg btn_state, btn_prev_state;

  always @(posedge clk, posedge rs) begin
    if (rs) begin
      r_reg <= 8'b00010101;         
    end 
	 else begin
      btn_prev_state <= btn_state;
      btn_state <= btn;
	
		if (btn_state && !btn_prev_state) begin
         if (r_reg==8) begin
				r_reg<=r_reg;
		   end else 
			 r_reg <= r_reg - 1;
		  end
      end
    end
assign q=r_reg;

endmodule
