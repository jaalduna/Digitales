`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:29:05 07/08/2013 
// Design Name: 
// Module Name:    ShiftRegisterWeb 
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
module ShiftRegisterWeb (C, SLOAD, SI, D, SO, PO, Reset,Shift); 
input  C,SI,SLOAD,Reset,Shift; 
input [7:0] D; 
output SO;
output [7:0] PO; 
reg [7:0] tmp; 
 
  always @(posedge C or posedge Reset) 
  begin 
    if (Reset) tmp = 0;
    else if (SLOAD) 
      tmp = D; 
    else 
      begin 
        if(Shift)tmp = {SI, tmp[7:1]}; 
      end 
  end 
  assign SO  = tmp[0];
  assign PO = tmp;
endmodule
