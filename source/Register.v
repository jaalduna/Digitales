`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:44:01 06/20/2013 
// Design Name: 
// Module Name:    Register 
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
module Register(
    input [7:0] DataIn,
    output [7:0] DataOut,
    input Load,
    input Reset,
    input Clk
    );
	 
	 reg [7:0] data;
	 
	 
	 always@(posedge Clk, posedge Reset)
	 begin
		if(Reset) data <= 0;
		else if(Load) data <= DataIn;
		//DataOut <= data;
	 end
	 assign DataOut = data;


endmodule
