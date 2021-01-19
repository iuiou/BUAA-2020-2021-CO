`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:00:54 11/21/2020 
// Design Name: 
// Module Name:    ALU 
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
module ALU( ///处理出ALU的运算信号和参与运算的A与B
   input [31:0] PC,
   input [31:0] IR,
	input [31:0] RD1,
	input [31:0] RD2,
	input [31:0] imm,
	output [31:0] C,
	output zero
    );
wire [31:0] A,B;
wire [1:0] choose_B;
wire choose_A;
wire [3:0] Op;

control Control(
    .op(IR[31:26]),
	 .fuc(IR[5:0]),
	 .RT(IR[`rt]),
	 `instr
	 );
assign choose_A=(sll || srl || sra || sllv || srlv || srav);
assign choose_B=(sllv || srlv || srav) ? 2'b11 :
                (sll || srl || sra) ? 2'b10 :
                (add || addu || subu || sub || slt || sltu || And || Or || Xor || Nor)? 2'b01 :
					 2'b00;
		
assign Op=(srl || sra || srlv || srav)? 4'b1000://右移
          (sll || sllv )? 4'b0111://左移
			 (slt || sltu || slti || sltiu)? 4'b0110://小于置1
			 (Nor)? 4'b0101://或非
			 (Xor || xori)? 4'b0100://异或
			 (And || andi)? 4'b0011://与
			 (Or || ori)? 4'b0010://或
			 (sub || subu)? 4'b0001://减
			 4'b0000;//加
assign A= choose_A ? RD2 : RD1;

assign B= choose_B==2'b11 ? {{27{1'b0}},RD1[4:0]}:
          choose_B==2'b10 ? {{27{1'b0}},IR[10:6]}:
          choose_B==2'b01 ? RD2: imm;
			 
assign C=(jal|| jalr)? PC+8:
         (lui)? imm:
         (Op == 4'b1000)? ((srl || srlv ) ? (A >> B[4:0]) : $signed($signed(A) >>> B[4:0])) :
         (Op == 4'b0111)? A << B[4:0]:
			(Op == 4'b0110)? ((slt || slti) ? ($signed(A) < $signed(B)) : (A < B)):
			(Op == 4'b0101)? ~(A | B):
			(Op == 4'b0100)? A^B:
			(Op == 4'b0011)? A&B:
			(Op == 4'b0010)? A|B:
			(Op == 4'b0001)? A-B:
			A+B;
assign zero=(C==0);
endmodule
