`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:14:14 11/01/2020 
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
module top_module (//mealy–Õfsm
    input clk,
    input aresetn,    // Asynchronous active-low reset
    input x,
    output z );
reg [31:0] status;
reg [31:0] next;
always @(posedge clk or negedge aresetn) begin
   if(!aresetn) status=0;
   else begin
	case(status)
   0:begin
	if(x==1) status=1;
	end
	1:begin
	if(x==0) status=2;
	end
	2:begin
	if(x==1) status=1;
	else status=0;
	end
	endcase
	end
end
assign z=(status==2&&x==1);
endmodule
