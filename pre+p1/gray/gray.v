`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:30:19 10/24/2020 
// Design Name: 
// Module Name:    gray 
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
module gray(
    input Clk,
	 input Reset,
	 input En,
	 output reg [2:0] Output,
	 output reg Overflow
    );
reg [31:0] cnt;
initial begin
    cnt=0;
	 Output=0;
	 Overflow=0;
end
always @(posedge Clk) begin
    if(Reset) begin
	 cnt=0;
	 Output=0;
	 Overflow=0;
	 end
	 else begin
	      if(En) cnt=cnt+1;
			if(cnt >= 8) begin
			Overflow = 1;
			cnt = 0;
			end
	 end
			case(cnt)
			0: Output = 0;
			1: Output = 1;
			2: Output = 3;
			3: Output = 2;
			4: Output = 6;
			5: Output = 7;
			6: Output = 5;
			7: Output = 4;
			endcase
end
endmodule
