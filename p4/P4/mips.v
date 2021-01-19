`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:10:51 11/14/2020 
// Design Name: 
// Module Name:    mips 
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
module mips(
    input reset,
	 input clk
    );

//IFU
wire [31:0] PC;
wire [31:0] nextPC;
wire [31:0] intr;
IFU ifu(
    .nextPC(nextPC),
    .clk(clk),
	 .reset(reset),
	 .PC(PC),
	 .intr(intr)
	 );
//分线器
wire [15:0] imm;
wire [5:0] fuc;
wire [4:0] rd;
wire [4:0] rt;
wire [4:0] rs;
wire [5:0] op;
splitter sp(
    .intr(intr),
	 .imm(imm),
	 .fuc(fuc),
	 .rd(rd),
	 .rt(rt),
	 .rs(rs),
	 .op(op)
	 );
wire [1:0] WDctrl;//控制信号堆
wire [1:0] ALUctrl;
wire RegWrite;
wire [1:0] Regdst;
wire [2:0] ALUOp;
wire [1:0] PCctrl;
wire MemWrite;
control Control(
    .op(op),
	 .fuc(fuc),
	 .WDctrl(WDctrl),
	 .ALUctrl(ALUctrl),
	 .RegWrite(RegWrite),
	 .MemWrite(MemWrite),
	 .Regdst(Regdst),
	 .ALUOp(ALUOp),
    .PCctrl(PCctrl)
	 );
//GRF
wire [4:0] WA; 
wire [31:0] WD;
wire [31:0] RD1;
wire [31:0] RD2;
GRF grf(
    .PC(PC),
    .clk(clk),
	 .reset(reset),
	 .RegWrite(RegWrite),
    .RA1(rs),
	 .RA2(rt),
	 .WA(WA),
	 .WD(WD),
	 .RD1(RD1),
	 .RD2(RD2)
	 );
//EXT
wire [31:0] signimm;
wire [31:0] unsign;
wire [31:0] bigimm;
EXT ext(
    .imm(imm),
    .signimm(signimm),
	 .unsign(unsign),
	 .bigimm(bigimm)
	 );
//ALU
wire [31:0] B;
wire [31:0] ALUout;
wire zero;
ALU alu(
    .A(RD1),
	 .B(B),
	 .Op(ALUOp),
	 .C(ALUout),
	 .zero(zero)
	 );
//DM
wire [31:0] DRAMout;
wire [31:0] addr;
wire [31:0] din;
DM dm(
    .PC(PC),
    .clk(clk),
	 .reset(reset),
	 .MemWrite(MemWrite),
    .addr(addr),
	 .din(din),
	 .dout(DRAMout)
    );
//控制信号
assign din=RD2;//写入dm的值
assign addr={{20{1'b0}},ALUout[11:0]};//写入dm的地址
assign nextPC=(PCctrl==3)?RD1://下一个PC地址
              (PCctrl==2)?PC+4+(zero?(signimm<<2):0):
				  (PCctrl==1)?{PC[31:28],intr[25:0],{2{1'b0}}}:
				  PC+4;
assign WA=(Regdst==2)?rd://写入寄存器的地址
          (Regdst==1)?5'b11111:
			 rt;
assign WD=(WDctrl==0)?ALUout://写入寄存器的值
          (WDctrl==1)?DRAMout:
			 (WDctrl==2)?PC+4:
			  bigimm;
assign B=(ALUctrl==0)?RD2://参与alu运算的第二个值
         (ALUctrl==1)?signimm:
			 unsign;
endmodule
