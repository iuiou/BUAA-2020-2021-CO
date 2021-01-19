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
     input cut,
	  input [31:0] EPC,
     input [31:0] RD1,
     input [31:0] RD2,
     input [31:0] PC,
	  input [31:0] id_PC,
     input [31:0] IR,
	  output [31:0] nPC,
	  output back,
	  output jump
    );
control Control(
    .IR(IR),
	 `instr
	 );
wire [2:0] PCctrl;
wire [31:0] signimm;
wire yes;
assign signimm={{16{IR[15]}},IR[15:0]};
assign PCctrl=(cut)? 3'b101 :
              (eret)? 3'b100 :
              (jr || jalr)?3'b011:
              (beq || bne || blez || bgtz || bltz || bgez)? 3'b010:
				  (jal || j)?3'b001:
				  3'b000;
assign yes = beq ? (RD1==RD2) :
             bne ? (RD1!=RD2) :
             blez ? ($signed(RD1) <= $signed(0)) :
             bgtz ? ($signed(RD1) > $signed(0)) :
             bltz ? ($signed(RD1) < $signed(0)) :
             bgez ? ($signed(RD1) >= $signed(0)) : 0;				 
assign nPC=(PCctrl == 3'b101)? 32'h00004180 ://进入中断处理程序
           (PCctrl == 3'b100)? EPC://eret跳回来
			  (PCctrl == 3'b011)? RD1:
           (PCctrl == 3'b010)? id_PC + 4 + (yes? (signimm<<2) :4):
 			  (PCctrl == 3'b001)? {id_PC[31:28],IR[25:0],{2{1'b0}}}:
				PC+4;
assign back=eret;
assign jump = (beq || bne || blez || bgtz || bltz || bgez || jr || jal || jalr || j); 
endmodule
