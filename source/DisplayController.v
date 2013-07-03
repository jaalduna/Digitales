`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:09:11 06/20/2013 
// Design Name: 
// Module Name:    DisplayController 
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
module DisplayController(
    input [3:0] BinIn,
    output reg [6:0] SegmentOut
    );
	 
	 always@(*)
	 begin
		case(BinIn)
			0: SegmentOut = 7'b1111110;
			1: SegmentOut = 7'b0110000;
			2: SegmentOut = 7'b1101101;
			3: SegmentOut = 7'b1111001;
			4: SegmentOut = 7'b0110011;
			5: SegmentOut = 7'b1011011;
			6: SegmentOut = 7'b1011111;
			7: SegmentOut = 7'b1110000;
			8: SegmentOut = 7'b1111111;
			9: SegmentOut = 7'b1110011;
			10: SegmentOut = 7'b1110111;
			11: SegmentOut = 7'b0011111;
			12: SegmentOut = 7'b1001110;
			13: SegmentOut = 7'b0111101;
			14: SegmentOut = 7'b1001111;
			15: SegmentOut = 7'b1000111;
		endcase
	 end


endmodule
