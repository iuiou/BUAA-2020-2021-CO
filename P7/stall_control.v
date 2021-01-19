`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:57:25 11/23/2020 
// Design Name: 
// Module Name:    stall_control 
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
module stall_control(
    input [31:0] id_IR,
	 input [31:0] ex_IR,
	 input [31:0] mem_IR,
	 input [4:0] ex_cg_reg,
	 input [4:0] mem_cg_reg,
	 input ex_cgcp0,
	 output stop
    );
wire [1:0] rs_tuse,rt_tuse;
get_tuse id_Tuse(
    .IR(id_IR),
	 .rs_tuse(rs_tuse),
	 .rt_tuse(rt_tuse)
    );

wire [1:0] ex_tnew;
get_tnew ex_Tnew(
    .IR(ex_IR),
	 .is_ex(1'b1),
	 .tnew(ex_tnew)
    );

wire [1:0] mem_tnew;
get_tnew mem_Tnew(
    .IR(mem_IR),
	 .is_ex(1'b0),
	 .tnew(mem_tnew)
    );
assign stop = (id_IR[`rs]==ex_cg_reg && ex_cg_reg!=0 && rs_tuse<ex_tnew )||(id_IR[`rs]==mem_cg_reg && mem_cg_reg!=0 && rs_tuse<mem_tnew)||
              (id_IR[`rt]==ex_cg_reg && ex_cg_reg!=0 && rt_tuse<ex_tnew )||(id_IR[`rt]==mem_cg_reg && mem_cg_reg!=0 && rt_tuse<mem_tnew )||
				  (id_IR[`op]==6'b010000 && id_IR[`fuc]==6'b011000 && ex_cgcp0 && ex_cg_reg == 14);//如果id级为eret，ex级为mtc0就暂停。
endmodule