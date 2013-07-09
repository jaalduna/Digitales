`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:51:05 06/26/2013 
// Design Name: 
// Module Name:    DFlipFlop 
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
module DFlipFlop(
    input D,
    input Reset,
	 input Clk,
    output Q
    );
	 
	 reg data;
	 
	
	 always@(posedge Clk, posedge Reset)
	 begin
		if(Reset) data <= 0;
		else data <= D;
	 end
	 
	 assign Q = data;


endmodule
