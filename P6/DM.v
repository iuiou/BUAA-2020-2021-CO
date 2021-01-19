`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:01:51 11/21/2020 
// Design Name: 
// Module Name:    DM 
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
module DM(
    input clk,
	 input reset,
    input [31:0] PC,
	 input [31:0] IR,
    input [31:0] addr,
	 input [31:0] din,
	 output [31:0] dout
    );
reg [31:0] dram [4095:0];
integer i;
initial begin
    for(i=0;i<4096;i=i+1) dram[i]=0;
end

control Control(
    .op(IR[31:26]),
	 .fuc(IR[5:0]),
	 .RT(IR[`rt]),
	 `instr
	 );
wire [31:0] now_data;
assign now_data = dram[addr[13:2]];	 
/////////////////////////////////////////////////////////////////////////////////////store¿ØÖÆ
wire MemWrite;
assign MemWrite=(sb || sh || sw);
wire [1:0] store_Op;
assign store_Op =(sb)? 2'b10:
                 (sh)? 2'b01: 
                 2'b00;
		  					  
wire [31:0] true_din;					  
wire [7:0] store_bit;
wire [15:0] store_half;
assign store_bit = din[7:0];
assign store_half = din[15:0];


assign true_din = (store_Op == 2'b10) ?
                                   ((addr[1:0] == 2'b11)? {store_bit,now_data[23:0]} :
                                    (addr[1:0] == 2'b10)? {now_data[31:24],store_bit,now_data[15:0]} :
												(addr[1:0] == 2'b01)? {now_data[31:16],store_bit,now_data[7:0]} :
                                    {now_data[31:8],store_bit}):
                  (store_Op == 2'b01) ?
                                   ((addr[1] == 1'b1)? {store_half,now_data[15:0]} :
		                              {now_data[31:16],store_half}) : 
												(din);
always @(posedge clk) begin
    if(reset) begin
	 for(i=0;i<=1023;i=i+1) dram[i]<=0;
	 end
	 else begin
	 if(MemWrite) begin
	     dram[addr[13:2]]<=true_din;
	     $display("%d@%h: *%h <= %h", $time, PC, {addr[31:2],2'b00}, true_din);
		  end
    end
end
/////////////////////////////////////////////////////////////////////////////////load¿ØÖÆ
wire [31:0] true_dout;
wire [1:0] load_Op;
wire [7:0] load_bit;
wire [15:0] load_half;
wire [31:0] sign_bit,sign_half;
assign load_Op = (lb || lbu) ? 2'b10:
                 (lh || lhu) ? 2'b01:
					  2'b00;
assign load_bit = (addr[1:0] == 2'b11) ? now_data[31:24] :
                  (addr[1:0] == 2'b10) ? now_data[23:16] :
						(addr[1:0] == 2'b01) ? now_data[15:8] :
					    now_data[7:0];
assign load_half = (addr[1] == 1'b1) ? now_data[31:16] : now_data[15:0];

assign sign_bit = {{24{load_bit[7]}},load_bit};
assign sign_half = {{16{load_half[15]}},load_half};
assign dout = (load_Op == 2'b10) ? ((lb) ? sign_bit : {{24{1'b0}},load_bit}) :
              (load_Op == 2'b01) ? ((lh) ? sign_half : {{16{1'b0}},load_half}) :
				   now_data;
                                        
endmodule
