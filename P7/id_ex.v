`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:17:59 11/21/2020 
// Design Name: 
// Module Name:    id_ex_ex 
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
module id_ex( //处理出imm16的结果，以及要写的寄存器
	 input clk,
	 input reset,
	 input clear,
	 input [4:0] exccode,
	 input [31:0] IR,
	 input [31:0] PC,
	 input [31:0] RD1,
	 input [31:0] RD2,
	 input delay,
	 input [31:0] cp0_out,
	 output reg [4:0] id_ex_exccode,
	 output reg [31:0] id_ex_RD1,
	 output reg [31:0] id_ex_RD2,
	 output reg [31:0] imm,
	 output reg [4:0] id_ex_WA,
	 output reg [31:0] id_ex_PC,
	 output reg [31:0] id_ex_IR,
	 output reg [31:0] id_ex_cp0_out,
	 output reg id_ex_delay,
	 output reg id_ex_cgcp0
    );
initial begin
    id_ex_exccode=0;
    id_ex_RD1=0;
	 id_ex_RD2=0;
	 imm=0;
	 id_ex_WA=0;
	 id_ex_PC=0;
	 id_ex_IR=0;
	 id_ex_delay=0;
	 id_ex_cgcp0=0;
	 id_ex_cp0_out=0;
end

wire [1:0] Regdst;
wire [4:0] rs,rt,rd;
wire [31:0] signimm,bigimm,unsign;
control Control(
    .IR(IR),
	 `instr
	 );


assign Regdst=(eret)? 2'b11 :
              (add || addu || subu || sub || slt || sltu || sll || srl || sra || sllv || srlv || srav || And || Or || Xor || Nor || jalr || mfhi || mflo || mtc0)? 2'b10://R型
              (jal)?2'b01://特殊：写31号寄存器
				  2'b00;	//其余全部写rt寄存器
assign signimm={{16{IR[15]}},IR[15:0]};
assign unsign={{16{1'b0}},IR[15:0]};
assign bigimm=({{16{1'b0}},IR[15:0]}<<16);	

always @(posedge clk) begin
    if(reset||clear) begin
	 if(reset) begin
	 id_ex_delay<=0;
	 id_ex_PC<=0;
	 end
	 else begin 
	 id_ex_PC<=PC;
	 id_ex_delay<=delay;
	 end
	 id_ex_exccode<=0;
	 id_ex_RD1<=0;
	 id_ex_RD2<=0;
	 imm<=0;
	 id_ex_WA<=0;
	 id_ex_IR<=0;
	 id_ex_cgcp0<=0;
	 id_ex_cp0_out<=0;
	 end
	 else begin
	 id_ex_exccode <= exccode;
	 id_ex_RD1 <= RD1;
	 id_ex_RD2 <= RD2;
	 imm <= (lb || lbu || lh || lhu || lw || sb || sh || sw || addi || addiu || slti || sltiu)? signimm :
           (ori || andi || xori)? unsign:
            bigimm;			  
	 id_ex_WA <= (Regdst==0)?IR[`rt]:
          (Regdst==1)?5'b11111:
			 (Regdst==3)?12:
			 IR[`rd];
	 id_ex_PC <= PC;
	 id_ex_IR <= IR;
	 id_ex_delay <= delay;
	 id_ex_cgcp0 <= (mtc0 || eret);
	 id_ex_cp0_out <= cp0_out;
	 end
end
			  
endmodule
