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
control id_control(
    .op(id_IR[31:26]),
	 .fuc(id_IR[5:0]),
	 .RT(id_IR[`rt]),
	 .lb(id_lb),
	 .lbu(id_lbu),
	 .lh(id_lh),
	 .lhu(id_lhu),
	 .lw(id_lw),
	 .sb(id_sb),
	 .sh(id_sh),
	 .sw(id_sw),
	 .add(id_add),
	 .addu(id_addu),
	 .subu(id_subu),
	 .sub(id_sub),
	 .mult(id_mult),
	 .multu(id_multu),
	 .div(id_div),
	 .divu(id_divu),
	 .sll(id_sll),
	 .srl(id_srl),
	 .sra(id_sra),
	 .sllv(id_sllv),
	 .srlv(id_srlv),
	 .srav(id_srav),
	 .And(id_And),
	 .Or(id_Or),
	 .Xor(id_Xor),
	 .Nor(id_Nor),
	 .addi(id_addi),
	 .addiu(id_addiu),
	 .andi(id_andi),
	 .ori(id_ori),
	 .xori(id_xori),
	 .lui(id_lui),
	 .slt(id_slt),
	 .slti(id_slti),
	 .sltiu(id_sltiu),
	 .sltu(id_sltu),
	 .beq(id_beq),
	 .bne(id_bne),
	 .blez(id_blez),
	 .bgtz(id_bgtz),
	 .bltz(id_bltz),
	 .bgez(id_bgez),
	 .j(id_j),
	 .jal(id_jal),
	 .jalr(id_jalr),
	 .jr(id_jr),
	 .mfhi(id_mfhi),
	 .mflo(id_mflo),
	 .mthi(id_mthi),
	 .mtlo(id_mtlo),
	 .madd(id_madd)
    );
control ex_Control(
    .op(ex_IR[31:26]),
	 .fuc(ex_IR[5:0]),
	 .RT(ex_IR[`rt]),
	 .lb(ex_lb),
	 .lbu(ex_lbu),
	 .lh(ex_lh),
	 .lhu(ex_lhu),
	 .lw(ex_lw),
	 .sb(ex_sb),
	 .sh(ex_sh),
	 .sw(ex_sw),
	 .add(ex_add),
	 .addu(ex_addu),
	 .subu(ex_subu),
	 .sub(ex_sub),
	 .mult(ex_mult),
	 .multu(ex_multu),
	 .div(ex_div),
	 .divu(ex_divu),
	 .sll(ex_sll),
	 .srl(ex_srl),
	 .sra(ex_sra),
	 .sllv(ex_sllv),
	 .srlv(ex_srlv),
	 .srav(ex_srav),
	 .And(ex_And),
	 .Or(ex_Or),
	 .Xor(ex_Xor),
	 .Nor(ex_Nor),
	 .addi(ex_addi),
	 .addiu(ex_addiu),
	 .andi(ex_andi),
	 .ori(ex_ori),
	 .xori(ex_xori),
	 .lui(ex_lui),
	 .slt(ex_slt),
	 .slti(ex_slti),
	 .sltiu(ex_sltiu),
	 .sltu(ex_sltu),
	 .beq(ex_beq),
	 .bne(ex_bne),
	 .blez(ex_blez),
	 .bgtz(ex_bgtz),
	 .bltz(ex_bltz),
	 .bgez(ex_bgez),
	 .j(ex_j),
	 .jal(ex_jal),
	 .jalr(ex_jalr),
	 .jr(ex_jr),
	 .mfhi(ex_mfhi),
	 .mflo(ex_mflo),
	 .mthi(ex_mthi),
	 .mtlo(ex_mtlo),
	 .madd(ex_madd)
	 );
control mem_Control(
    .op(mem_IR[31:26]),
	 .fuc(mem_IR[5:0]),
	 .RT(mem_IR[`rt]),
	 .lb(mem_lb),
	 .lbu(mem_lbu),
	 .lh(mem_lh),
	 .lhu(mem_lhu),
	 .lw(mem_lw),
	 .sb(mem_sb),
	 .sh(mem_sh),
	 .sw(mem_sw),
	 .add(mem_add),
	 .addu(mem_addu),
	 .subu(mem_subu),
	 .sub(mem_sub),
	 .mult(mem_mult),
	 .multu(mem_multu),
	 .div(mem_div),
	 .divu(mem_divu),
	 .sll(mem_sll),
	 .srl(mem_srl),
	 .sra(mem_sra),
	 .sllv(mem_sllv),
	 .srlv(mem_srlv),
	 .srav(mem_srav),
	 .And(mem_And),
	 .Or(mem_Or),
	 .Xor(mem_Xor),
	 .Nor(mem_Nor),
	 .addi(mem_addi),
	 .addiu(mem_addiu),
	 .andi(mem_andi),
	 .ori(mem_ori),
	 .xori(mem_xori),
	 .lui(mem_lui),
	 .slt(mem_slt),
	 .slti(mem_slti),
	 .sltiu(mem_sltiu),
	 .sltu(mem_sltu),
	 .beq(mem_beq),
	 .bne(mem_bne),
	 .blez(mem_blez),
	 .bgtz(mem_bgtz),
	 .bltz(mem_bltz),
	 .bgez(mem_bgez),
	 .j(mem_j),
	 .jal(mem_jal),
	 .jalr(mem_jalr),
	 .jr(mem_jr),
	 .mfhi(mem_mfhi),
	 .mflo(mem_mflo),
	 .mthi(mem_mthi),
	 .mtlo(mem_mtlo),
	 .madd(mem_madd)
	 );
control wb_Control(
    .op(wb_IR[31:26]),
	 .fuc(wb_IR[5:0]),
	 .RT(wb_IR[`rt]),
	 .lb(wb_lb),
	 .lbu(wb_lbu),
	 .lh(wb_lh),
	 .lhu(wb_lhu),
	 .lw(wb_lw),
	 .sb(wb_sb),
	 .sh(wb_sh),
	 .sw(wb_sw),
	 .add(wb_add),
	 .addu(wb_addu),
	 .subu(wb_subu),
	 .sub(wb_sub),
	 .mult(wb_mult),
	 .multu(wb_multu),
	 .div(wb_div),
	 .divu(wb_divu),
	 .sll(wb_sll),
	 .srl(wb_srl),
	 .sra(wb_sra),
	 .sllv(wb_sllv),
	 .srlv(wb_srlv),
	 .srav(wb_srav),
	 .And(wb_And),
	 .Or(wb_Or),
	 .Xor(wb_Xor),
	 .Nor(wb_Nor),
	 .addi(wb_addi),
	 .addiu(wb_addiu),
	 .andi(wb_andi),
	 .ori(wb_ori),
	 .xori(wb_xori),
	 .lui(wb_lui),
	 .slt(wb_slt),
	 .slti(wb_slti),
	 .sltiu(wb_sltiu),
	 .sltu(wb_sltu),
	 .beq(wb_beq),
	 .bne(wb_bne),
	 .blez(wb_blez),
	 .bgtz(wb_bgtz),
	 .bltz(wb_bltz),
	 .bgez(wb_bgez),
	 .j(wb_j),
	 .jal(wb_jal),
	 .jalr(wb_jalr),
	 .jr(wb_jr),
	 .mfhi(wb_mfhi),
	 .mflo(wb_mflo),
	 .mthi(wb_mthi),
	 .mtlo(wb_mtlo),
	 .madd(wb_madd)
	 );
//////////////////////////////////////////////////////////////判断每一阶段Tnew=0且是要写寄存器的指令//转发来源
wire ex_cg,mem_cg,wb_cg;
assign ex_cg = (ex_jal || ex_jalr);

assign mem_cg = (mem_add || mem_addu || mem_subu || mem_sub || mem_slt || mem_sltu || mem_sll || mem_srl || mem_sra ||
                 mem_sllv || mem_srlv ||mem_srav || mem_And || mem_Or || mem_Xor || mem_Nor || mem_addi || mem_addiu ||
					  mem_andi || mem_ori || mem_xori || mem_lui || mem_slti || mem_sltiu || mem_jal || mem_jalr || mem_mflo || 
					  mem_mfhi);

assign wb_cg = (wb_add || wb_addu || wb_subu || wb_sub || wb_slt || wb_sltu || wb_sll || wb_srl || wb_sra ||
                wb_sllv || wb_srlv ||wb_srav || wb_And || wb_Or || wb_Xor || wb_Nor || wb_addi || wb_addiu ||
					 wb_andi || wb_ori || wb_xori || wb_lui || wb_slti || wb_sltiu || wb_jal || wb_jalr || wb_mflo || 
					 wb_mfhi || wb_lb || wb_lbu || wb_lh || wb_lhu || wb_lw);
//////////////////////////////////////////////////////////////判断每一阶段要用目标寄存器的指令//转发目标
wire id_use_rs,id_use_rt;
assign id_use_rs = (id_beq || id_jr || id_bne || id_blez || id_bgtz || id_bltz || id_bgez || id_jalr);

assign id_use_rt = (id_beq || id_bne);

wire ex_use_rs,ex_use_rt;
assign ex_use_rs = (ex_lb || ex_lbu || ex_lh || ex_lhu || ex_lw || ex_sb || ex_sh || ex_sw || ex_add || ex_addu ||
                    ex_sub || ex_subu || ex_mult || ex_multu || ex_div || ex_divu || ex_slt || ex_sltu || ex_sllv || ex_srlv || 
                    ex_srav || ex_And || ex_Or || ex_Xor || ex_Nor || ex_addi || ex_addiu || ex_andi || ex_ori || ex_xori || 
						  ex_slti || ex_sltiu || ex_mtlo || ex_mthi || ex_madd);
 
assign ex_use_rt = (ex_add || ex_addu || ex_sub || ex_subu || ex_mult || ex_multu || ex_div || ex_divu || ex_slt || ex_sltu || 
                    ex_sll || ex_srl || ex_sra || ex_sllv || ex_srlv || ex_srav || ex_And || ex_Or || ex_Xor || ex_Nor || ex_sw 
						  || ex_sb || ex_sh || ex_madd);

wire mem_use_rt;
assign mem_use_rt = (mem_sw || mem_sb || mem_sh);
//////////////////////////////////////////////////////////////向id转发
wire id_ex_to_id_rs, ex_mem_to_id_rs;

assign id_ex_to_id_rs = (id_IR[`rs]==ex_WA && ex_cg && id_use_rs && ex_WA!=0);
assign ex_mem_to_id_rs = (id_IR[`rs]==mem_WA && mem_cg && id_use_rs && mem_WA!=0);

assign F_id_rs = (id_ex_to_id_rs) ? 1:
                 (ex_mem_to_id_rs) ? 2:
					  0;
					  
wire id_ex_to_id_rt, ex_mem_to_id_rt;

assign id_ex_to_id_rt = (id_IR[`rt]==ex_WA && ex_cg && id_use_rt && ex_WA!=0);
assign ex_mem_to_id_rt = (id_IR[`rt]==mem_WA && mem_cg && id_use_rt && mem_WA!=0);

assign F_id_rt = (id_ex_to_id_rt) ? 1:
                 (ex_mem_to_id_rt) ? 2:
					  0;
//////////////////////////////////////////////////////////////向ex转发
wire ex_mem_to_ex_rs,mem_wb_to_ex_rs;

assign ex_mem_to_ex_rs = (ex_IR[`rs]==mem_WA && mem_cg && ex_use_rs && mem_WA!=0);
assign mem_wb_to_ex_rs = (ex_IR[`rs]==wb_WA && wb_cg && ex_use_rs && wb_WA!=0);

assign F_ex_rs = (ex_mem_to_ex_rs) ? 1:
                 (mem_wb_to_ex_rs) ? 2:
					  0;
					  
wire ex_mem_to_ex_rt,mem_wb_to_ex_rt;

assign ex_mem_to_ex_rt = (ex_IR[`rt]==mem_WA && mem_cg && ex_use_rt && mem_WA!=0);
assign mem_wb_to_ex_rt = (ex_IR[`rt]==wb_WA && wb_cg && ex_use_rt && wb_WA!=0);

assign F_ex_rt = (ex_mem_to_ex_rt) ? 2'b01:
                 (mem_wb_to_ex_rt) ? 2'b10:
					  2'b00;
////////////////////////////////////////////////////////////////向mem转发
wire mem_wb_to_mem_rt;

assign mem_wb_to_mem_rt = (mem_IR[`rt]==wb_WA && wb_cg && mem_use_rt && wb_WA!=0);

assign F_mem_rt = (mem_wb_to_mem_rt)? 2'b01:2'b00;
endmodule
