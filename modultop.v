`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:13:07 11/22/2023 
// Design Name: 
// Module Name:    modultop 
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
module modultop(
input wire clk,
input wire reset,btn,stop,
input wire speed,
input wire [1:0] mode,
output wire lcd_rs, lcd_rw, lcd_e, lcd_4, lcd_5, lcd_6, lcd_7,
output [3:0] ONES, TENS,
output [1:0] HUNDREDS,
output [7:0] q,
output [5:0] LED,
output [7:6] led
);
wire [256:0] chars;
wire [7:0] a;
wire b;
wire f;

// module installation
LCD lcd(clk,chars,lcd_rs, lcd_rw, lcd_e, lcd_4, lcd_5, lcd_6, lcd_7);
DICHLED m2 (b,mode,reset,stop,LED);
HEX_to_BCD machchuyen(a,ONES,TENS,HUNDREDS);
chiaxung m4 (clk,speed,b);
clk2hz m7 (clk,f);
blink m5 (f,a,q);
btn m6 (clk,reset,btn,a);
// defnine data memorymachchuyen
assign chars[255:144] ="MinhThien     ";
assign chars[127:64] = "    2003";
assign led[7:6] = q[1:0];
assign chars[63:0] ="        ";
assign chars[143:136] = {4'b0011,TENS};
assign chars[135:128] = {4'b0011,ONES};

endmodule
