`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:32:26 06/20/2013 
// Design Name: 
// Module Name:    ShiftRegister 
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
module ShiftRegister(
    input In,
    output reg Out,
    input [7:0] LoadIn,
    output reg [7:0] DataOut,
    input Reset,
    input Clk,
    input Load,
	 input Shift
    );
	 
	 reg [7:0] data;
	 
	 always@(Reset)
		data <= 0;
	always @ (posedge Clk)
	begin
		if(Load) data <= LoadIn;
		else
		if(Shift)begin
			Out <= data[0];
			data[0] <= data[1];
			data[1] <= data[2];
			data[2] <= data[3];
			data[3] <= data[4];
			data[4] <= data[5];
			data[5] <= data[6];
			data[6] <= data[7];
			data[7] <= In;
		end
		DataOut <= data;
	end
	

endmodule
