`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:56:13 06/26/2013
// Design Name:   ZeroDetect
// Module Name:   D:/jurgen/archivos/PUC/2013-1/IEE2713/Entrega2/ZeroDetect_tb.v
// Project Name:  Entrega2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ZeroDetect
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ZeroDetect_tb;

	// Inputs
	reg [3:0] In;

	// Outputs
	wire Out;

	// Instantiate the Unit Under Test (UUT)
	ZeroDetect uut (
		.In(In), 
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
		In = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		In=1;
		#10;
		In=2;
		#10;
		In=0;
		#10;
		In=1;
		

	end
      
endmodule

