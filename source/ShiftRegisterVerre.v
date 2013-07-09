`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:02:41 07/08/2013 
// Design Name: 
// Module Name:    ShiftRegisterVerre 
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
module ShiftRegisterVerre(
    input In,
    output reg Out,
    input [7:0] LoadIn,
    output [7:0] DataOut,
    input Reset,
    input Clk,
    input Load,
	 input Shift
    );
	 
	 reg [7:0] data;
	 
	 /*always@(Reset)
	 begin
		data <= 0;
		Out <= 1'b0;
	end*/
	always @ (posedge Clk,posedge Reset)
	begin
		if(Reset)
		begin
			data <= 0;
			Out <= 0;
		end
		else if(Load) data <= LoadIn;
		else
		if(Shift)begin
			Out <= data[7];
			data[7] <= data[6];
			data[6] <= data[5];
			data[5] <= data[4];
			data[4] <= data[3];
			data[3] <= data[2];
			data[2] <= data[1];
			data[1] <= data[0];
			data[0] <= In;
		end
		//DataOut <= data;
	end
	assign DataOut = data;

endmodule
