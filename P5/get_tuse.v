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
    .op(IR[31:26]),
	 .fuc(IR[5:0]),
	 `instr
	 );
assign rs_tuse=(addu||subu||ori||lui||lw||sw||cmco)?1:
               (beq||jr)?0:3;//3表示根本不用停
assign rt_tuse=(sw)?2:
               (addu||subu)?1:
					(beq)?0:3;
endmodule
