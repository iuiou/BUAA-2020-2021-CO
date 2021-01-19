`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:49:47 12/08/2020 
// Design Name: 
// Module Name:    CPU 
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

module CPU(
    input clk,
	 input reset,
	 input [31:0] PrRD,//从外部读入的数据
	 input [5:0] HWInt,//6个外部硬件中断
	 output [31:2] Praddr,//地址总线
	 output [31:0] PrWD,//写计时器
	 output PrWrite,//写使能
	 output [31:0] out_PC
    );
wire cut;//中断信号

wire En,stop,busy_stop; //冒险和乘除暂停	
 
wire [1:0] F_id_rs,F_id_rt,F_id_cp0;//转发控制	 	 
wire [1:0] F_ex_rs,F_ex_rt,F_ex_cp0;
wire [1:0] F_mem_rt;

wire [31:0] nextPC,PC,intr,f_intr;

IFU ifu(
    .cut(cut),
    .nextPC(nextPC),
	 .En(En),
	 .clk(clk),
	 .reset(reset),
	 .PC(PC),
	 .intr(intr)
    );				  
wire [31:0] id_PC,id_IR,f_PC;
wire [4:0] exccode,id_exccode;//f_表示在这级处理过的结果，没有f_表示还没被处理
assign delay = jump;
if_id IF_id(
    .clk(clk),
	 .reset(reset),
	 .clear(if_id_clear),
	 .En(En),
	 .exccode(exccode),
	 .intr(f_intr),
	 .PC(f_PC),
	 .delay(delay),
	 .if_id_wrong(id_wrong),
	 .IR(id_IR),
	 .if_id_exccode(id_exccode),
	 .if_id_PC(id_PC),
	 .if_id_delay(id_delay),
	 .hi_lo(id_hi_lo)
    );
	
wire [31:0] wb_PC,wb_WD,wb_IR,be_RD1,be_RD2 ,RD1, RD2;
wire [4:0] wb_WA;
wire wb_RegWrite;
wire [31:0] EPC,SR,out_data;
GRF grf(
    .PC(wb_PC),
    .clk(clk),
	 .reset(reset),
	 .WD(wb_WD),
	 .RegWrite(wb_RegWrite),
    .RA1(id_IR[`rs]),
	 .RA2(id_IR[`rt]),
	 .WA(wb_WA),
	 .RD1(be_RD1),
	 .RD2(be_RD2)
    );
	 
nPC NPC(
     .cut(cut),
	  .EPC(EPC),
     .RD1(RD1),
     .RD2(RD2),
     .PC(PC),
	  .id_PC(id_PC),
     .IR(id_IR),
	  .nPC(nextPC),
	  .back(back),
	  .jump(jump)
    );	 
wire [31:0] be_ex_RD1,be_ex_RD2,ex_RD1,ex_RD2,ex_imm,ex_PC,ex_IR,be_ex_cp0_out;
wire [4:0] ex_WA;
wire [4:0] ex_exccode,f_id_exccode;
id_ex ID_ex( 
    .clk(clk),
	 .reset(reset),
	 .clear(id_ex_clear),
	 .exccode(f_id_exccode),
	 .IR(id_IR),
	 .PC(id_PC),
	 .RD1(RD1),
	 .RD2(RD2),
	 .delay(id_delay),
	 .cp0_out(out_data),
	 .id_ex_exccode(ex_exccode),
	 .id_ex_RD1(be_ex_RD1),
	 .id_ex_RD2(be_ex_RD2),
	 .imm(ex_imm),
	 .id_ex_WA(ex_WA),
	 .id_ex_PC(ex_PC),
	 .id_ex_IR(ex_IR),
	 .id_ex_cp0_out(be_ex_cp0_out),
	 .id_ex_delay(ex_delay),
	 .id_ex_cgcp0(ex_cgcp0)
    );
wire [31:0] ALUout;
wire [31:0] ex_cp0_out;
wire [1:0] overflow;
ALU alu( 
   .cp0_out(ex_cp0_out),
   .PC(ex_PC),
   .IR(ex_IR),
	.RD1(ex_RD1),
	.RD2(ex_RD2),
	.imm(ex_imm),
	.C(ALUout),
	.overflow(overflow)
    );
wire [31:0] hi,lo;
wire busy;
mult_div md(
    .cut(cut),
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
    .IR(ex_IR),
	 `instr
	 );
assign f_ALUout = mfhi ? hi :
                  mflo ? lo :
                  ALUout;		
wire [4:0] f_ex_exccode,mem_exccode,f_mem_exccode;						
ex_mem EX_mem(//流水3-4：访问DM,更新PC
	 .clk(clk),
	 .reset(reset),
	 .clear(ex_mem_clear),
	 .exccode(f_ex_exccode),
	 .PC(ex_PC),
	 .ALUout(f_ALUout),
	 .RD2(ex_RD2),//传递RD2值
	 .WA(ex_WA),
	 .IR(ex_IR),
	 .delay(ex_delay),
	 .cgcp0(ex_cgcp0),

    .ex_mem_exccode(mem_exccode),
	 .ex_mem_ALUout(mem_ALUout),
	 .ex_mem_din(be_mem_din),
	 .ex_mem_WA(mem_WA),
	 .ex_mem_IR(mem_IR),
	 .ex_mem_PC(mem_PC),
	 .ex_mem_delay(mem_delay),
	 .ex_mem_cgcp0(mem_cgcp0)
    );
wire [31:0] dout;	
wire [31:0] mem_addr;
assign mem_addr = mem_ALUout;
assign Praddr = mem_addr[31:2];
assign PrWrite = (mem_IR[`op]==6'b101011)&&((mem_addr >= 32'h00007f00&&mem_addr <= 32'h00007f0b)||(mem_addr >= 32'h00007f10&&mem_addr <= 32'h00007f1b))&&(!cut);
assign PrWD = (mem_din); 
assign out_PC = (mem_PC);
DM dm(
    .cut(cut),
    .clk(clk),
	 .reset(reset),
    .PC(mem_PC),
	 .IR(mem_IR),
    .addr(mem_addr),
	 .din(mem_din),
	 .dout(dout),
	 .s_wrong(s_wrong),
	 .l_wrong(l_wrong)
    );
wire [31:0] f_dout;
assign f_dout = (mem_IR[`op]==6'b100011)&&((mem_addr >= 32'h00007f00&&mem_addr <= 32'h00007f0b)||(mem_addr >= 32'h00007f10&&mem_addr <= 32'h00007f1b))? PrRD : dout;
mem_wb MEM_wb(//流水4-5：回写寄存器
    .clk(clk),
	 .reset(reset),
	 .clear(mem_wb_clear),
	 .PC(mem_PC),
	 .IR(mem_IR),
    .dout(f_dout),
	 .ALUout(mem_ALUout),
	 .WA(mem_WA),
	 .cgcp0(mem_cgcp0),
	 .mem_wb_IR(wb_IR),
	 .mem_wb_WD(wb_WD),
	 .mem_wb_RegWrite(wb_RegWrite),
	 .mem_wb_WA(wb_WA),
	 .mem_wb_PC(wb_PC), 
	 .mem_wb_cgcp0(wb_cgcp0)
     );
//暂停	  
stall_control Stall(
    .id_IR(id_IR),
	 .ex_IR(ex_IR),
	 .mem_IR(mem_IR),
	 .ex_cg_reg(ex_WA),
	 .mem_cg_reg(mem_WA),
	 .ex_cgcp0(ex_cgcp0),
	 .stop(stop)
    );
assign busy_stop = (id_hi_lo && busy);
assign En = (!stop)&&(!busy_stop);
assign id_ex_clear = (stop || busy_stop || cut);

//转发
trans Trans( 
    .id_IR(id_IR),
	 .ex_IR(ex_IR),
	 .mem_IR(mem_IR),
	 .wb_IR(wb_IR),
	 .ex_WA(ex_WA),
	 .mem_WA(mem_WA),
	 .wb_WA(wb_WA),
	 .ex_cgcp0(ex_cgcp0),
	 .mem_cgcp0(mem_cgcp0),
	 .wb_cgcp0(wb_cgcp0),
	 
	 .F_id_rs(F_id_rs),
	 .F_id_rt(F_id_rt),
	 .F_id_cp0(F_id_cp0),
	 .F_ex_rs(F_ex_rs),
	 .F_ex_rt(F_ex_rt),
	 .F_ex_cp0(F_ex_cp0),
	 .F_mem_rt(F_mem_rt)
    );
//cp0协处理器
CP0 cp0(
    .clk(clk),
	 .reset(reset),
    .IR(id_IR),//读数1
	 .WA(wb_WA),//写数1
	 .is_delay(mem_delay),//是否是延迟槽指令
	 .is_eret(wb_eret),//是否是eret
	 .WE(wb_cgcp0),//写入使能
	 .WD(wb_WD),//写入的数
	 .PC(mem_PC),//错误指令的PC
	 .exccode(f_mem_exccode),//内部中断代码
    .HWInt(HWInt),//外部中断
	 .cut(cut),
	 .out_data(out_data)
);
assign RD1 = F_id_rs == 1 ? ex_PC+8 :
             F_id_rs == 2 ? mem_ALUout :
             be_RD1;
assign RD2 = F_id_rt == 1 ? ex_PC+8 :
             F_id_rt == 2 ? mem_ALUout :
             be_RD2;
assign EPC = F_id_cp0 == 1 ? mem_ALUout : out_data;
assign ex_RD1 = F_ex_rs == 1 ? mem_ALUout :
                F_ex_rs == 2 ? wb_WD :
                be_ex_RD1;	
assign ex_RD2 = F_ex_rt == 1 ? mem_ALUout :
                F_ex_rt == 2 ? wb_WD :
                be_ex_RD2;		
assign ex_cp0_out = F_ex_cp0 == 1 ? ((mem_eret)? be_ex_cp0_out-2: mem_ALUout):
                    F_ex_cp0 == 2 ? ((wb_eret)? be_ex_cp0_out-2: wb_WD) :
						  be_ex_cp0_out;
assign mem_din = F_mem_rt == 1 ? wb_WD : be_mem_din;	
//中断
assign if_id_clear = cut;
assign ex_mem_clear = cut;
assign mem_wb_clear = cut;	 
//if级异常
assign exccode = ((PC[1:0]!=2'b00)||(PC < 32'h00003000)||(PC > 32'h00004fff)) ? 4 :0;
assign f_intr = (exccode==4 || back)? 0 : intr;//发生异常或使用eret时将空指令写入if_id
//id级异常
assign f_id_exccode = (id_wrong) ? 10 :id_exccode;
//ex级异常
assign f_ex_exccode = (overflow == 3) ? 4 :
                      (overflow == 2) ? 5 :
							 (overflow == 1) ? 12 : ex_exccode;
//mem级异常
assign f_mem_exccode = (s_wrong ) ? 5 : ((l_wrong) ? 4 : mem_exccode);
//特判eret
assign mem_eret=(mem_IR[`op]==6'b010000)&&(mem_IR[`fuc]==6'b011000);
assign wb_eret=(wb_IR[`op]==6'b010000)&&(wb_IR[`fuc]==6'b011000);

assign f_PC = back ? EPC : PC;
endmodule

