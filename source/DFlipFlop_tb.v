`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:38:49 06/26/2013
// Design Name:   DFlipFlop
// Module Name:   D:/jurgen/archivos/PUC/2013-1/IEE2713/Entrega2/DFlipFlop_tb.v
// Project Name:  Entrega2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DFlipFlop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DFlipFlop_tb;

	// Inputs
	reg D;
	reg Reset;
	reg Clk;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	DFlipFlop uut (
		.D(D), 
		.Reset(Reset), 
		.Clk(Clk), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		Reset = 0;
		Clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		Clk=1;
		#10;
		Clk=0;
		#10;
		D=1;
		Clk=1;
		#10;
		Clk=0;
		#10;
		Clk=1;
		#10;
		Clk=0;
		#10;
		Clk=1;
		#10;
		Clk=0;
		#10;
		D=0;
		Clk=1;
		#10;
		Clk=0;
		#10;
		Clk=1;
		#10;
		Clk=0;
		#10;

	end
      
endmodule

