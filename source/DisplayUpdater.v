`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:58:17 07/06/2013 
// Design Name: 
// Module Name:    DisplayUpdater 
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
module DisplayUpdater(
    input [27:0] DataIn,
	 input clk,
    output reg [3:0] an,
    output reg [6:0] seg,
    output dp
    );
	 
	 assign dp = 1'b0;
	 
	 reg [1:0] st;
	 always@(posedge clk)
	 begin
		case(st)
			2'b00:
			begin
				st <= 2'b01;
				an <= 4'b0001;
				seg <= DataIn[27:21];
			end
			2'b01:
			begin
				st <= 2'b10;
				an <= 4'b0010;
				seg <= DataIn[20:14];
			end
			2'b10:
			begin
				st <= 2'b11;
				an <= 4'b0100;
				seg <= DataIn[13:7];
			end
			2'b11:
			begin
				st <= 2'b00;
				an <= 4'b1000;
				seg <= DataIn[6:0];
			end
			default:
				st <= 2'b00;
		endcase
	 end
	 


endmodule
