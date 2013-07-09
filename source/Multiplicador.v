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
	 input resetCU,
	 input clk,
    input [7:0] sw,
    output [15:0] ouput
    );
	 
	 wire Z, Q0, LoadA, LoadQ, LoadB,LoadP, ResetA, ResetC, DecC,Shift;
	 wire [3:0] dataout;
	 
	 Counter contador(4'd7,dataout,LoadP,DecC,clk);
	 ZeroDetect detector(dataout,Z);
	 ControlUnit cu(Z,btn,Q0,clk,resetCU,LoadA,LoadQ,LoadB,LoadP,ResetA,ResetC,DecC,Shift);

	 wire cableAQ;
	 wire cableCA;
	 wire [7:0] sumaA;
	 
	 //ShiftRegister srA(cableCA,cableAQ,sumaA, ouput[15:8],ResetA,clk,LoadA,Shift);
	 //ShiftRegister srQ(cableAQ,Q0,sw, ouput[7:0],resetCU,clk,LoadQ,Shift);
//	 ShiftRegisterVerre srA(cableCA,cableAQ,sumaA, ouput[15:8],ResetA,clk,LoadA,Shift);
//	 ShiftRegisterVerre srQ(cableAQ,Q0,sw, ouput[7:0],resetCU,clk,LoadQ,Shift);
ShiftRegisterWeb srA (.C(clk),.SLOAD(LoadA),.SI(cableCA),.D(sumaA),.SO(cableAQ),.PO(ouput[15:8]),.Reset(ResetA),.Shift(Shift));
ShiftRegisterWeb srQ (.C(clk),.SLOAD(LoadQ),.SI(cableAQ),.D(sw),.SO(Q0),.PO(ouput[7:0]),.Reset(ResetCU),.Shift(Shift));
	 
	 wire Cout;
	 wire [7:0] BtoAdd;
	 
	 Register registroB(sw,BtoAdd,LoadB,resetCU,clk);
	 add_bx sumador(Cout,sumaA,BtoAdd,ouput[15:8],1'b0);
	 
	 wire FFin;
	 /*always@(Q0)
	 begin
		if(resetCU) FFin <= 1'b0;
		//if(ResetC) FFin <= 1'b0;
		else if(Q0) FFin <= Cout;
		else FFin <= 1'b0;
	 end*/
	 //assign cableCA = FFin;
	 assign FFin = Q0 ? Cout : 0;
	 DFlipFlop FFC(FFin,ResetC,clk,cableCA);
	 //FFD FFC(FFin,clk,ResetC,cableCA);

endmodule
