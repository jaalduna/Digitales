`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:03:23 06/23/2013 
// Design Name: 
// Module Name:    Multiplicador 
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
module Multiplicador(
    input btn,
	 input clk,
    input [7:0] sw,
    output [15:0] ouput
    );
	 
	 wire Z, Q0, LoadA, LoadQ, LoadB,LoadP, ResetA, ResetC, DecC,Shift;
	 
	 ControlUnit cu(Z,btn,Q0,clk,0,LoadA,LoadQ,LoadB,LoadP,ResetA,ResetC,DecC,Shift);
	 wire [3:0] dataout;
	 Counter contador(7,dataout,LoadP,DecC);
	 ZeroDetect detector(dataout,Z);
	 
	 wire cableAQ,cableCA;
	 wire [7:0] sumaA;
	 
	 ShiftRegister srA(cableCA,cableAQ,sumaA, ouput[15:8],ResetA,clk,LoadA,Shift);
	 ShiftRegister srQ(cableAQ,Q0,sw, ouput[7:0],1'b0,clk,LoadQ,Shift);
	 
	 wire Cout;
	 wire [7:0] BtoAdd;
	 
	 add_bx sumador(Cout,sumaA,BtoAdd,ouput[15:8],0);
	 
	 Register registroB(sw,BtoAdd,LoadB,0,clk);
	 
	 reg FFin;
	 always@(Q0)
	 begin
		if(Q0) FFin <= Cout;
		else FFin <= 0;
	 end
	 
	 DFlipFlop FFC(FFin,ResetC,clk,cableAQ);

endmodule
