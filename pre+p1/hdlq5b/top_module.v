`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:22:37 11/01/2020 
// Design Name: 
// Module Name:    top_module 
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
module top_module (
    input clk,
    input areset,
    input x,
    output z
); 
reg [31:0] status;
reg [31:0] next;

always@(posedge clk or posedge areset) begin
    if(areset) status=0;
	 else begin
	 case(status)
	 0:begin
	 if(x==0) status=0;
	 else status=1;
	 end
	 1:begin
	 status=1;
	 end
	 endcase
	 end
end
assign z=(status==0&&x==1)||(status==1&&x==0);
endmodule
