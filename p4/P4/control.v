`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:15:45 11/14/2020 
// Design Name: 
// Module Name:    control 
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
module control(
    input [5:0] op,
	 input [5:0] fuc,
	 output [1:0] WDctrl,
	 output [1:0] ALUctrl,
	 output RegWrite,
	 output MemWrite,
	 output [1:0] Regdst,
	 output [2:0] ALUOp,
	 output [1:0] PCctrl
    );
wire addu,subu,lw,sw,beq,lui,jal,jr,ori;
assign addu=(op==6'b000000)&&(fuc==6'b100001);
assign subu=(op==6'b000000)&&(fuc==6'b100011);
assign lw=(op==6'b100011);
assign sw=(op==6'b101011);
assign beq=(op==6'b000100);
assign lui=(op==6'b001111);
assign jal=(op==6'b000011);
assign jr=(op==6'b000000)&&(fuc==6'b001000);
assign ori=(op==6'b001101);
assign j=(op==6'b000010);

assign WDctrl=(lui)? 2'b11://写入grf数据种类控制信号
              (jal)? 2'b10:
				  (lw)?2'b01:2'b00;
assign ALUctrl=(ori)? 2'b10://参与alu运算的第二个数
               (lw||sw)?2'b01:
					2'b00;
assign RegWrite=(addu||subu||lw||ori||lui||jal);//写寄存器控制信号
assign Regdst=(addu||subu)?2'b10://rd              //写寄存器地址控制信号
              (jal)?2'b01://31
				  2'b00;//rt
assign ALUOp=(ori)?3'b010://alu运算方式控制信号
             (subu||beq)?3'b001:
				 3'b000;
assign PCctrl=(jr)?2'b11://PC跳转控制信号
              (beq)?2'b10:
				  (jal||j)?2'b01:
				  2'b00;
assign MemWrite=(sw);//dm写入控制信号
endmodule
