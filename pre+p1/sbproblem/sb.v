`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:12:15 10/31/2020 
// Design Name: 
// Module Name:    sb 
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
module sb(
    input clk,
	 input reset,
	 input [7:0] temp,
	 input flip,
	 output reg [1:0] status,
	 output reg need_flip
    );
reg [31:0] statu;
initial begin
    need_flip=0;
	 statu=0;
	 status=0;
end
always @(posedge clk or posedge reset) begin
    if(reset) begin
	 need_flip=0;
	 statu=0;
	 status=0;
	 end 
	 else begin
	     case(statu)
		  0:begin
		  if(flip) statu=4;
		  else begin
		  if(temp>=120&&temp<130) statu=1;
		  else if(temp<120) statu=0;
		  else statu=4;
		  end
		  end
		  1:begin
		  if(temp>=130&&temp<150) begin
		  if(flip) statu=2;
		  end
		  else if(temp<130) begin
		  if(flip) statu=4;
		  end
		  else statu=4;
		  end
		  2:begin
		  if(flip) statu=4;
		  else begin
		  if(temp>=150&&temp<180) statu=3;
		  else if(temp>=180) statu=4;
		  end
		  end
		  3:begin
		  if(flip||temp>=180) statu=4;
		  end
		  4:statu=4;
		  endcase
		  case(statu)
		  0:status=2'b00;
		  1:status=2'b01;
		  2:status=2'b01;
		  3:status=2'b10;
		  4:status=2'b11;
		  endcase
		  need_flip=(statu==1&&temp>=130&&temp<150);
		end
		end
		
endmodule
