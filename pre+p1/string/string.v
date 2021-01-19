`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:17:53 10/24/2020 
// Design Name: 
// Module Name:    string 
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
module string(
    input clk,
	 input clr,
	 input [7:0] in,
	 output reg out
    );
reg [31:0] state;
initial begin
    state=0;
	 out=0;
end
always @(posedge clk or posedge clr) begin
    if(clr) begin
	 state=0;
	 out=0;
	 end
	 else begin
	 case(state)
	 0:begin
	 if(in>="0"&&in<="9") state = 1;
	 else state=3;
	 end
	 1:begin//一个数字的状态
	 if(in>="0"&&in<="9") state = 3;
	 else state = 2;
	 end
	 2:begin
	 if(in>="0"&&in<="9") state = 1;
	 else state=3;
	 end
	 3:state=3;
	 endcase
	 if(state==1) out=1;
	 else out=0;
	 end
end
endmodule
