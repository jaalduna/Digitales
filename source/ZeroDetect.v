`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:30:27 06/20/2013 
// Design Name: 
// Module Name:    ZeroDetect 
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
module ZeroDetect(
    input [3:0] In,
    output reg Out
    );
	 
	 always@(*)
	 begin
		if(In == 0) Out <= 1;
		else Out <= 0;
	 end


endmodule
