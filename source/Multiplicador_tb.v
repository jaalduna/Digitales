`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:41:24 06/26/2013
// Design Name:   Multiplicador
// Module Name:   D:/jurgen/archivos/PUC/2013-1/IEE2713/Entrega2/Multiplicador_tb.v
// Project Name:  Entrega2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Multiplicador
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Multiplicador_tb;

	// Inputs
	reg btn;
	reg clk;
	reg [7:0] sw;

	// Outputs
	wire [15:0] ouput;

	// Instantiate the Unit Under Test (UUT)
	Multiplicador uut (
		.btn(btn), 
		.clk(clk), 
		.sw(sw), 
		.ouput(ouput)
	);

	initial begin
		// Initialize Inputs
		btn = 0;
		clk = 0;
		sw = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		sw=2;
		btn=1;
		clk=1;
		#10;
		clk=0;
		btn=0;
		sw=0;
		#10;
		clk=1;
		btn=1;
		sw=3;
		#10;
		clk=0;
		btn=0;
		sw=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		clk=1;
		#10;
		clk=0;
		#10;
		
		
        
		// Add stimulus here

	end
      
endmodule

