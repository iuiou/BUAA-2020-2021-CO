`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:53:43 12/08/2020 
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
module mips(
    input clk,
	 input reset,
	 input interrupt,
	 output [31:0] addr
    );
wire [31:0] T_din,PrWD;
wire [31:2] Praddr;
wire [5:0] HWInt;

CPU cpu(
    .clk(clk),
	 .reset(reset),
	 .PrRD(T_din),
	 .HWInt(HWInt),	 
	 .Praddr(Praddr),
	 .PrWD(PrWD),
	 .PrWrite(PrWrite),	 
	 .out_PC(addr)
    );
wire [31:0] tc1_out,tc2_out;
TC1 tc1(
    .clk(clk),
    .reset(reset),
    .Addr(Praddr),
    .WE(tc1_WE),
    .Din(PrWD),
    .Dout(tc1_out),
    .IRQ(tc1_IQR)//ÖÐ¶Ï
    );
TC2 tc2(
    .clk(clk),
    .reset(reset),
    .Addr(Praddr),
    .WE(tc2_WE),
    .Din(PrWD),
    .Dout(tc2_out),
    .IRQ(tc2_IQR)//ÖÐ¶Ï
    );
//ÇÅ
assign tc1_WE = PrWrite && ({Praddr,2'b00} <= 32'h00007f0b);
assign tc2_WE = PrWrite && ({Praddr,2'b00} >= 32'h00007f10);
assign HWInt = {3'b000,interrupt,tc2_IQR,tc1_IQR};
assign T_din = ({Praddr,2'b00} <= 32'h00007f0b) ? tc1_out : tc2_out;
endmodule
