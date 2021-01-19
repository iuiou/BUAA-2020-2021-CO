`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:55:19 11/21/2020 
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
`include "wiredef.vh"
module mips(
    input clk,
	 input reset
    );
wire En,clear,stop; //暂停控制	
 
wire [1:0] F_id_rs,F_id_rt;//转发控制	 	 
wire [1:0] F_ex_rs,F_ex_rt;
wire [1:0] F_mem_rt;

wire [31:0] nextPC,PC,intr;
IFU ifu(
    .nextPC(nextPC),
	 .En(En),
	 .clk(clk),
	 .reset(reset),
	 .PC(PC),
	 .intr(intr)
    );

wire [31:0] id_PC,id_IR;
if_id IF_id(
    .clk(clk),
	 .reset(reset),
	 .En(En),
	 .intr(intr),
	 .PC(PC),
	 .IR(id_IR),
	 .if_id_PC(id_PC)
    );
	
wire [31:0] wb_PC,wb_WD,wb_IR,be_RD1,be_RD2 ,RD1, RD2;
wire [4:0] wb_WA;
wire wb_RegWrite;

GRF grf(
    .PC(wb_PC),
    .clk(clk),
	 .reset(reset),
	 .WD(wb_WD),
	 .RegWrite(wb_RegWrite),
    .RA1(id_IR[25:21]),
	 .RA2(id_IR[20:16]),
	 .WA(wb_WA),
	 .RD1(be_RD1),
	 .RD2(be_RD2)
    );	
control Control(
    .op(id_IR[31:26]),
	 .fuc(id_IR[5:0]),
	 `instr
	 );
wire [1:0] PCctrl;
assign PCctrl=(jr)?2'b11:
              (beq)?2'b10:
				  (jal||j)?2'b01:
				  2'b00;
				   
assign nextPC=(PCctrl==3)? RD1:
              (PCctrl==2)? id_PC+4+((RD1==RD2)?({{16{id_IR[15]}},id_IR[15:0]}<<2):4):
				  (PCctrl==1)? {id_PC[31:28],id_IR[25:0],{2{1'b0}}}:
				  PC+4;

wire [31:0] be_ex_RD1,be_ex_RD2,ex_RD1,ex_RD2,ex_imm,ex_PC,ex_IR;
wire [4:0] ex_WA;
id_ex ID_ex( 
    .clk(clk),
	 .reset(reset),
	 .clear(clear),
	 .IR(id_IR),
	 .PC(id_PC),
	 .RD1(RD1),
	 .RD2(RD2),
	 .id_ex_RD1(be_ex_RD1),
	 .id_ex_RD2(be_ex_RD2),
	 .imm(ex_imm),
	 .id_ex_WA(ex_WA),
	 .id_ex_PC(ex_PC),
	 .id_ex_IR(ex_IR)
    );
wire [31:0] ALUout;
wire zero;
ALU alu( 
   .PC(ex_PC),
   .IR(ex_IR),
	.RD1(ex_RD1),
	.RD2(ex_RD2),
	.imm(ex_imm),
	.C(ALUout),
	.zero(zero)
    );
wire [31:0] mem_ALUout,be_mem_din,mem_din,mem_IR,mem_PC,mem_RD1;
wire [4:0] mem_WA;
ex_mem EX_mem(//流水3-4：访问DM,更新PC
    .clk(clk),
	 .reset(reset),
	 .PC(ex_PC),
	 .ALUout(ALUout),
	 .RD2(ex_RD2),//传递RD2值
	 .WA(ex_WA),
	 .IR(ex_IR),

	 .ex_mem_ALUout(mem_ALUout),
	 .ex_mem_din(be_mem_din),
	 .ex_mem_WA(mem_WA),
	 .ex_mem_IR(mem_IR),
	 .ex_mem_PC(mem_PC)
    );
wire [31:0] dout;	
wire [31:0] mem_addr;
assign mem_addr={{20{1'b0}},mem_ALUout[11:0]};		  
DM dm(
    .clk(clk),
	 .reset(reset),
    .PC(mem_PC),
	 .IR(mem_IR),
    .addr(mem_addr),
	 .din(mem_din),
	 .dout(dout)
    );

mem_wb MEM_wb(//流水4-5：回写寄存器
    .clk(clk),
	 .reset(reset),
	 .PC(mem_PC),
	 .IR(mem_IR),
    .dout(dout),
	 .ALUout(mem_ALUout),
	 .WA(mem_WA),
	 .mem_wb_IR(wb_IR),
	 .mem_wb_WD(wb_WD),
	 .mem_wb_RegWrite(wb_RegWrite),
	 .mem_wb_WA(wb_WA),
	 .mem_wb_PC(wb_PC) 
     );
//暂停	  
stall_control Stall(
    .id_IR(id_IR),
	 .ex_IR(ex_IR),
	 .mem_IR(mem_IR),
	 .ex_cg_reg(ex_WA),
	 .mem_cg_reg(mem_WA),
	 .stop(stop)
    );
assign En = !(stop);
assign clear = stop;
//转发
trans Trans( 
    .id_IR(id_IR),
	 .ex_IR(ex_IR),
	 .mem_IR(mem_IR),
	 .wb_IR(wb_IR),
	 .ex_WA(ex_WA),
	 .mem_WA(mem_WA),
	 .wb_WA(wb_WA),
	 
	 .F_id_rs(F_id_rs),
	 .F_id_rt(F_id_rt),
	 .F_ex_rs(F_ex_rs),
	 .F_ex_rt(F_ex_rt),
	 .F_mem_rt(F_mem_rt)
    );
assign RD1 = F_id_rs == 1 ? ex_PC+8 :
             F_id_rs == 2 ? mem_ALUout :
             be_RD1;
assign RD2 = F_id_rt == 1 ? ex_PC+8 :
             F_id_rt == 2 ? mem_ALUout :
             be_RD2;
assign ex_RD1 = F_ex_rs == 1 ? mem_ALUout :
                F_ex_rs == 2 ? wb_WD :
                be_ex_RD1;	
assign ex_RD2 = F_ex_rt == 1 ? mem_ALUout :
                F_ex_rt == 2 ? wb_WD :
                be_ex_RD2;		
assign mem_din = F_mem_rt == 1 ? wb_WD : be_mem_din;				 
endmodule
