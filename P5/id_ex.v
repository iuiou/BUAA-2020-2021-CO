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
module id_ex(
    input clk,
	 input reset,
	 input clear,
	 input [31:0] IR,
	 input [31:0] PC,
	 input [31:0] RD1,
	 input [31:0] RD2,
	 output reg [31:0] id_ex_RD1,
	 output reg [31:0] id_ex_RD2,
	 output reg [31:0] imm,
	 output reg [4:0] id_ex_WA,
	 output reg [31:0] id_ex_PC,
	 output reg [31:0] id_ex_IR
    );
initial begin
    id_ex_RD1=0;
	 id_ex_RD2=0;
	 imm=0;
	 id_ex_WA=0;
	 id_ex_PC=0;
	 id_ex_IR=0;
end

wire [1:0] Regdst;
wire [4:0] rs,rt,rd;
wire [15:0] _imm;
wire [31:0] signimm,bigimm,unsign;
control Control(
    .op(IR[31:26]),
	 .fuc(IR[5:0]),
	 `instr
	 );

assign _imm=IR[15:0];
assign rd=IR[15:11];
assign rt=IR[20:16];
assign rs=IR[25:21];
assign Regdst=(addu||subu||cmco)?2'b10:
              (jal)?2'b01:
				  2'b00;	
assign signimm={{16{IR[15]}},IR[15:0]};
assign unsign={{16{1'b0}},_imm};
assign bigimm=({{16{1'b0}},_imm}<<16);	

always @(posedge clk) begin
    if(reset||clear) begin
	 id_ex_RD1<=0;
	 id_ex_RD2<=0;
	 imm<=0;
	 id_ex_WA<=0;
	 id_ex_PC<=0;
	 id_ex_IR<=0;
	 end
	 else begin
	 id_ex_RD1 <= RD1;
	 id_ex_RD2 <= RD2;
	 imm <= (lw||sw)? signimm :
           (ori)? unsign:
            bigimm;			  
	 id_ex_WA <= (Regdst==0)?rt:
          (Regdst==1)?5'b11111:
			 rd;
	 id_ex_PC <= PC;
	 id_ex_IR <= IR;
	 end
end
			  
endmodule
