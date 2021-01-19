`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:04:10 11/21/2020 
// Design Name: 
// Module Name:    control 
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
module control(
    input [31:0] IR,
	 output lb,
	 output lbu,
	 output lh,
	 output lhu,
	 output lw,
	 output sb,
	 output sh,
	 output sw,
	 output add,
	 output addu,
	 output subu,
	 output sub,
	 output mult,
	 output multu,
	 output div,
	 output divu,
	 output sll,
	 output srl,
	 output sra,
	 output sllv,
	 output srlv,
	 output srav,
	 output And,
	 output Or,
	 output Xor,
	 output Nor,
	 output addi,
	 output addiu,
	 output andi,
	 output ori,
	 output xori,
	 output lui,
	 output slt,
	 output slti,
	 output sltiu,
	 output sltu,
	 output beq,
	 output bne,
	 output blez,
	 output bgtz,
	 output bltz,
	 output bgez,
	 output j,
	 output jal,
	 output jalr,
	 output jr,
	 output mfhi,
	 output mflo,
	 output mthi,
	 output mtlo,
	 output eret,
	 output mfc0,
	 output mtc0,
	 output wrong
    );
wire [5:0] op,fuc;
wire [4:0] rs,rt,rd;
assign op = IR[`op];
assign fuc = IR[`fuc];
assign rs = IR[`rs];
assign rt = IR[`rt];
assign rd = IR[`rd];
assign lb=(op==6'b100000);//存储指令
assign lbu=(op==6'b100100);
assign lh=(op==6'b100001);
assign lhu=(op==6'b100101);
assign lw=(op==6'b100011);
assign sb=(op==6'b101000);
assign sh=(op==6'b101001);
assign sw=(op==6'b101011);
assign add=(op==6'b000000)&&(fuc==6'b100000);//R型指令
assign addu=(op==6'b000000)&&(fuc==6'b100001);
assign subu=(op==6'b000000)&&(fuc==6'b100011);
assign sub=(op==6'b000000)&&(fuc==6'b100010);
assign mult=(op==6'b000000)&&(fuc==6'b011000);
assign multu=(op==6'b000000)&&(fuc==6'b011001);
assign div=(op==6'b000000)&&(fuc==6'b011010);
assign divu=(op==6'b000000)&&(fuc==6'b011011);
assign sll=(op==6'b000000)&&(fuc==6'b000000);
assign srl=(op==6'b000000)&&(fuc==6'b000010);
assign sra=(op==6'b000000)&&(fuc==6'b000011);
assign sllv=(op==6'b000000)&&(fuc==6'b000100);
assign srlv=(op==6'b000000)&&(fuc==6'b000110);
assign srav=(op==6'b000000)&&(fuc==6'b000111);
assign And=(op==6'b000000)&&(fuc==6'b100100);
assign Or=(op==6'b000000)&&(fuc==6'b100101);
assign Xor=(op==6'b000000)&&(fuc==6'b100110);
assign Nor=(op==6'b000000)&&(fuc==6'b100111);
assign slt=(op==6'b000000)&&(fuc==6'b101010);
assign sltu=(op==6'b000000)&&(fuc==6'b101011);
assign jalr=(op==6'b000000)&&(fuc==6'b001001);//R+跳转加写
assign jr=(op==6'b000000)&&(fuc==6'b001000);
assign mfhi=(op==6'b000000)&&(fuc==6'b010000);
assign mflo=(op==6'b000000)&&(fuc==6'b010010);
assign mtlo=(op==6'b000000)&&(fuc==6'b010011);
assign mthi=(op==6'b000000)&&(fuc==6'b010001);
assign addi=(op==6'b001000);//I型指令
assign addiu=(op==6'b001001);
assign andi=(op==6'b001100);
assign ori=(op==6'b001101);
assign xori=(op==6'b001110);
assign lui=(op==6'b001111);
assign slti=(op==6'b001010);
assign sltiu=(op==6'b001011);
assign beq=(op==6'b000100);//条件跳转
assign bne=(op==6'b000101);
assign blez=(op==6'b000110);
assign bgtz=(op==6'b000111);
assign bltz=(op==6'b000001)&&(rt==5'b00000);
assign bgez=(op==6'b000001)&&(rt==5'b00001);
assign j=(op==6'b000010);//跳转
assign jal=(op==6'b000011);
assign eret=(op==6'b010000)&&(fuc==6'b011000);
assign mtc0=(op==6'b010000)&&(rs==5'b00100);
assign mfc0=(op==6'b010000)&&(rs==5'b00000);
assign wrong = !((IR==0)|lb|lbu|lh|lhu|lw|sb|sh|sw|add|addu|subu|sub|mult|multu|div|divu|sll|srl|sra|sllv|srlv|srav|And|Or|Xor|Nor|addi|addiu|andi|ori|xori|lui|slt|slti|sltiu|sltu|beq|bne|blez|bgtz|bltz|bgez|j|jal|jalr|jr|mfhi|mflo|mthi|mtlo|eret|mtc0|mfc0);
endmodule
