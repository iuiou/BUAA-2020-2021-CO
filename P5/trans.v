`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: fzh
// 
// Create Date:    17:33:46 11/23/2020 
// Design Name: 
// Module Name:    trans 
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
module trans(
    input [31:0] id_IR,
	 input [31:0] ex_IR,
	 input [31:0] mem_IR,
	 input [31:0] wb_IR,
	 input [4:0] ex_WA,
	 input [4:0] mem_WA,
	 input [4:0] wb_WA,
	 
	 output [1:0] F_id_rs,
	 output [1:0] F_id_rt,
	 output [1:0] F_ex_rs,
	 output [1:0] F_ex_rt,
	 output [1:0] F_mem_rt
    );
control id_Control(
    .op(id_IR[31:26]),
	 .fuc(id_IR[5:0]),
	 .addu(id_addu),
	 .subu(id_subu),
	 .lw(id_lw),
	 .sw(id_sw),
	 .beq(id_beq),
	 .lui(id_lui),
	 .jal(id_jal),
	 .jr(id_jr),
	 .ori(id_ori),
	 .j(id_j),
	 .cmco(id_cmco)
	 );
control ex_Control(
    .op(ex_IR[31:26]),
	 .fuc(ex_IR[5:0]),
	 .addu(ex_addu),
	 .subu(ex_subu),
	 .lw(ex_lw),
	 .sw(ex_sw),
	 .beq(ex_beq),
	 .lui(ex_lui),
	 .jal(ex_jal),
	 .jr(ex_jr),
	 .ori(ex_ori),
	 .j(ex_j),
	 .cmco(ex_cmco)
	 );
control mem_Control(
    .op(mem_IR[31:26]),
	 .fuc(mem_IR[5:0]),
	 .addu(mem_addu),
	 .subu(mem_subu),
	 .lw(mem_lw),
	 .sw(mem_sw),
	 .beq(mem_beq),
	 .lui(mem_lui),
	 .jal(mem_jal),
	 .jr(mem_jr),
	 .ori(mem_ori),
	 .j(mem_j),
	 .cmco(mem_cmco)
	 );
control wb_Control(
    .op(wb_IR[31:26]),
	 .fuc(wb_IR[5:0]),
	 .addu(wb_addu),
	 .subu(wb_subu),
	 .lw(wb_lw),
	 .sw(wb_sw),
	 .beq(wb_beq),
	 .lui(wb_lui),
	 .jal(wb_jal),
	 .jr(wb_jr),
	 .ori(wb_ori),
	 .j(wb_j),
	 .cmco(wb_cmco)
	 );
//判断每一阶段Tnew=0且是要写寄存器的指令
wire ex_cg,mem_cg,wb_cg;
assign ex_cg = (ex_jal);
assign mem_cg = (mem_addu||mem_subu||mem_ori||mem_lui||mem_jal||mem_cmco);
assign wb_cg = (wb_addu||wb_subu||wb_ori||wb_lui||wb_jal||wb_lw||wb_cmco);
//////////////////////////////////////////////////////////////向id转发
wire id_ex_to_id_rs, ex_mem_to_id_rs;
wire id_use_rs;
assign id_use_rs = (id_beq||id_jr);
assign id_ex_to_id_rs = (id_IR[`rs]==ex_WA && ex_cg && id_use_rs && ex_WA!=0);
assign ex_mem_to_id_rs = (id_IR[`rs]==mem_WA && mem_cg && id_use_rs && mem_WA!=0);

assign F_id_rs = (id_ex_to_id_rs) ? 1:
                 (ex_mem_to_id_rs) ? 2:
					  0;
					  
wire id_ex_to_id_rt, ex_mem_to_id_rt;
wire id_use_rt;
assign id_use_rt = (id_beq);
assign id_ex_to_id_rt = (id_IR[`rt]==ex_WA && ex_cg && id_use_rt && ex_WA!=0);
assign ex_mem_to_id_rt = (id_IR[`rt]==mem_WA && mem_cg && id_use_rt && mem_WA!=0);

assign F_id_rt = (id_ex_to_id_rt) ? 1:
                 (ex_mem_to_id_rt) ? 2:
					  0;
//////////////////////////////////////////////////////////////向ex转发
wire ex_mem_to_ex_rs,mem_wb_to_ex_rs;
wire ex_use_rs;
assign ex_use_rs = (ex_addu||ex_subu||ex_ori||ex_lui||ex_lw||ex_sw||ex_cmco);
assign ex_mem_to_ex_rs = (ex_IR[`rs]==mem_WA && mem_cg && ex_use_rs && mem_WA!=0);
assign mem_wb_to_ex_rs = (ex_IR[`rs]==wb_WA && wb_cg && ex_use_rs && wb_WA!=0);

assign F_ex_rs = (ex_mem_to_ex_rs) ? 1:
                 (mem_wb_to_ex_rs) ? 2:
					  0;
					  
wire ex_mem_to_ex_rt,mem_wb_to_ex_rt;
wire ex_use_rt;
assign ex_use_rt = (ex_addu||ex_subu||ex_sw);
assign ex_mem_to_ex_rt = (ex_IR[`rt]==mem_WA && mem_cg && ex_use_rt && mem_WA!=0);
assign mem_wb_to_ex_rt = (ex_IR[`rt]==wb_WA && wb_cg && ex_use_rt && wb_WA!=0);

assign F_ex_rt = (ex_mem_to_ex_rt) ? 2'b01:
                 (mem_wb_to_ex_rt) ? 2'b10:
					  2'b00;
////////////////////////////////////////////////////////////////向mem转发
wire mem_wb_to_mem_rt;
wire mem_use_rt;
assign mem_use_rt = (mem_sw);
assign mem_wb_to_mem_rt = (mem_IR[`rt]==wb_WA && wb_cg && mem_use_rt && wb_WA!=0);

assign F_mem_rt = (mem_wb_to_mem_rt)? 2'b01:2'b00;
endmodule
