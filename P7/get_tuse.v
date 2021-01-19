`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:08:03 11/23/2020 
// Design Name: 
// Module Name:    get_tuse 
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
module get_tuse(
    input [31:0] IR,
	 output [1:0] rs_tuse,
	 output [1:0] rt_tuse
    );

control Control(
    .IR(IR),
	 `instr
	 );
assign rs_tuse=(lb || lbu || lh || lhu || lw || sb || sh || sw || add || addu || sub || subu || mult || multu || div || divu || slt || sltu || sllv || srlv || 
                srav || And || Or || Xor || Nor || addi || addiu || andi || ori || xori || slti || sltiu || mtlo || mthi)?1:
               (beq || jr || bne || blez || bgtz || bltz || bgez || jalr)?0:3;//3表示根本不用停
assign rt_tuse=(sb || sh || sw)?2:
               (add || addu || sub || subu || mult || multu || div || divu || slt || sltu || sll || srl || sra || sllv || srlv || srav || And || Or || Xor ||
					 Nor || mtc0)? 1 :
					(beq || bne)? 0 : 3;
endmodule
