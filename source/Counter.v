`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:02:14 06/20/2013 
// Design Name: 
// Module Name:    Counter 
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
module Counter(
    input [3:0] DataIn,
    output [3:0] DataOut,
    input Load,
	 input Dec,
    input Clk
    );
	 
	 reg [3:0] data;
	 
	 /*always@(Load)
	 begin
		data <= DataIn;
	 end*/
	 
	 always@(posedge Clk,posedge Load)
	 begin
		if(Load) data <= DataIn;
		else if(Dec) data <= data-1;
		//DataOut <= data;
	 end
	 assign DataOut = data;
	 
	
endmodule
