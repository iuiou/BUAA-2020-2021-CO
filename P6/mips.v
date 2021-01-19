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
wire En,stop,busy_stop; //冒险和乘除暂停	
 
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
	 .if_id_PC(id_PC),
	 .hi_lo(id_hi_lo)
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
nPC NPC(
     .RD1(RD1),
     .RD2(RD2),
     .PC(PC),
	  .id_PC(id_PC),
     .IR(id_IR),
	  .nPC(nextPC)
    );	 
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
wire [31:0] hi,lo;
wire busy;
mult_div md(
    .clk(clk),
	 .reset(reset),
    .IR(ex_IR),
	 .A(ex_RD1),
	 .B(ex_RD2),
	 .hi(hi),
	 .lo(lo),
	 .busy(busy)
	 );
wire [31:0] mem_ALUout,be_mem_din,mem_din,mem_IR,mem_PC,mem_RD1;
wire [4:0] mem_WA;
wire [31:0] f_ALUout;
control Control(
    .op(ex_IR[31:26]),
	 .fuc(ex_IR[5:0]),
	 .RT(ex_IR[`rt]),
	 `instr
	 );
assign f_ALUout = mfhi ? hi :
                  mflo ? lo :
                  ALUout;						
ex_mem EX_mem(//流水3-4：访问DM,更新PC
	 .clk(clk),
	 .reset(reset),
	 .PC(ex_PC),
	 .ALUout(f_ALUout),
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
assign mem_addr={{18{1'b0}},mem_ALUout[13:0]};		  
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
	 
assign busy_stop = id_hi_lo && busy;
assign En = (!stop)&&(!busy_stop);
assign clear = (stop || busy_stop);

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
