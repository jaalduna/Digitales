`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:11:54 06/17/2013 
// Design Name: 
// Module Name:    Top 
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
module Top(
		input btn,
		input [7:0] sw,
		input clk,
		output [27:0] display
		
    );
	 
	 wire [15:0] salidamul;
	 Multiplicador mul(btn,clk,sw,salidamul);
	 
	 //Procesamos las salidas.
	 DisplayController s1(salidamul[15:12],display[27:21]);
	 DisplayController s2(salidamul[11:8],display[20:14]);
	 DisplayController s3(salidamul[7:4],display[13:7]);
	 DisplayController s4(salidamul[3:0],display[6:0]);
	 
	 


endmodule
