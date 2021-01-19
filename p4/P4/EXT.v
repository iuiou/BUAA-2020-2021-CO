`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:12:45 11/14/2020 
// Design Name: 
// Module Name:    EXT 
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
module EXT(
    input [15:0] imm,
	 output [31:0] signimm,
	 output [31:0] unsign,
	 output [31:0] bigimm
    );
assign signimm=(imm[15])?{{16{1'b1}},imm}:{{16{1'b0}},imm};
assign unsign={{16{1'b0}},imm};
assign bigimm=({{16{1'b0}},imm}<<16);

endmodule
