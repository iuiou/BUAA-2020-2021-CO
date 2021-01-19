`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:02:58 10/24/2020 
// Design Name: 
// Module Name:    ext 
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
module ext(
    input [15:0] imm,
	 input [1:0] EOp,
	 output [31:0] ext 
    );
assign ext = (EOp == 0)?($signed(imm)<0?{{16{1'b1}},imm}:{{16{1'b0}},imm}):
             (EOp == 1)?{{16{1'b0}},imm}:
				 (EOp == 2)?{imm,{16{1'b0}}}:
				 ($signed(imm)<0? {{16{1'b1}},imm}:{{16{1'b0}},imm})<<2;

endmodule
