`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:12:17 11/14/2020 
// Design Name: 
// Module Name:    splitter 
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
module splitter(
    input [31:0] intr,
	 output [15:0] imm,
	 output [5:0] fuc,
	 output [4:0] rd,
	 output [4:0] rt,
	 output [4:0] rs,
	 output [5:0] op
    );
assign imm=intr[15:0];
assign fuc=intr[5:0];
assign rd=intr[15:11];
assign rt=intr[20:16];
assign rs=intr[25:21];
assign op=intr[31:26];
endmodule
