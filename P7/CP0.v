`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:47:33 12/09/2020 
// Design Name: 
// Module Name:    CP0 
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
module CP0(
    input clk,
	 input reset,
    input [31:0] IR,//id级指令
	 input [4:0] WA,//写数1
	 input is_delay,//是否是延迟槽指令
	 input is_eret,//是否是eret
	 input WE,//写入使能
	 input [31:0] WD,//写入的数
	 input [31:0] PC,//错误指令的PC
	 input [4:0] exccode,//内部中断代码
    input [5:0] HWInt,//外部中断
	 output cut,//是否中断
	 output [31:0] out_data
    );
reg [31:0] cause,PRID,EPC,SR;
wire [4:0] RA;
initial begin
    EPC <= 0;
	 SR <= 0;
	 cause <= 0;
	 PRID <= 32'h19373794;
end
control Control(
    .IR(IR),
	 `instr
	 );
assign RA = eret ? 14 : IR[`rd];
wire [31:0] _SR,_cause,_EPC,_PRID;
assign _SR = (WE && (WA == 12)) ? (is_eret? SR-2 : WD) : SR;
assign _cause = (WE && (WA == 13)) ? WD : cause;
assign _EPC = (WE && (WA == 14)) ? WD : EPC;
assign _PRID = (WE && (WA == 15)) ? WD : PRID;
wire out_cut;
assign out_cut = ((_SR[15:10] & HWInt)&& _SR[0] && !_SR[1]);//外部中断条件
assign cut = out_cut || (exccode &&!_SR[1]);
always @(posedge clk) begin
    if(reset) begin
	 EPC <= 0;
	 SR <= 0;
	 cause <= 0;
	 PRID <= 32'h19373794;
	 end
	 else begin
	 if(WE) begin
	    if(WA == 12) begin
		 if(is_eret) SR[1] <= 0;
		 else SR <= WD;
		 end
		 else if(WA == 13) cause <= WD;
		 else if(WA == 14) EPC <= WD;
		 else if(WA == 15) PRID <= WD;
	 end
	 if(cut) begin
	    SR[1] <= 1'b1;
       if(is_delay) cause[31] <= 1'b1;
		 else cause[31] <= 1'b0;
		 cause[6:2] <= out_cut ? 0 : exccode;
		 EPC <= (is_delay ? {PC[31:2],2'b00}-4 : {PC[31:2],2'b00});
	 end
	   cause[15:10] <= HWInt; 
	 end
end
	
assign out_data = (RA == 12) ? _SR :
                  (RA == 13) ? _cause :
                  (RA == 14) ? _EPC :
                  (RA == 15) ? _PRID : 0;						
endmodule
