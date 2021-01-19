`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:11:26 11/29/2020 
// Design Name: 
// Module Name:    nPC 
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
`include "wiredef.vh" 
module nPC(
     input [31:0] RD1,
     input [31:0] RD2,
     input [31:0] PC,
	  input [31:0] id_PC,
     input [31:0] IR,
	  output [31:0] nPC
    );
control Control(
    .op(IR[31:26]),
	 .fuc(IR[5:0]),
	 .RT(IR[`rt]),
	 `instr
	 );
wire [1:0] PCctrl;
wire [31:0] signimm;
wire yes;
assign signimm={{16{IR[15]}},IR[15:0]};
assign PCctrl=(jr || jalr)?2'b11:
              (beq || bne || blez || bgtz || bltz || bgez)? 2'b10:
				  (jal || j)?2'b01:
				  2'b00;
assign yes = beq ? (RD1==RD2) :
             bne ? (RD1!=RD2) :
             blez ? ($signed(RD1) <= $signed(0)) :
             bgtz ? ($signed(RD1) > $signed(0)) :
             bltz ? ($signed(RD1) < $signed(0)) :
             bgez ? ($signed(RD1) >= $signed(0)) : 0;				 
assign nPC=(PCctrl == 2'b11)? RD1:
           (PCctrl == 2'b10)? id_PC + 4 + (yes? (signimm<<2) :4):
 			  (PCctrl == 2'b01)? {id_PC[31:28],IR[25:0],{2{1'b0}}}:
				PC+4;
endmodule
