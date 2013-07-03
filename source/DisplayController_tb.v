`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:21:52 06/20/2013
// Design Name:   DisplayController
// Module Name:   D:/jurgen/archivos/PUC/2013-1/IEE2713/Entrega2/DisplayController_tb.v
// Project Name:  Entrega2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DisplayController
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DisplayController_tb;

	// Inputs
	reg [3:0] BinIn;

	// Outputs
	wire [6:0] SegmentOut;

	// Instantiate the Unit Under Test (UUT)
	DisplayController uut (
		.BinIn(BinIn), 
		.SegmentOut(SegmentOut)
	);

	initial begin
		// Initialize Inputs
		BinIn = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		BinIn = 1;
		#10;
		BinIn = 2;
		#10;
		BinIn = 3;
		#10;
		BinIn = 4;
		#10;
		BinIn = 5;
		#10;
		BinIn = 6;
		#10;
		BinIn = 7;
		#10;
		BinIn = 8;
		#10;
		BinIn = 9;
		#10;
		BinIn = 10;
		#10;
		BinIn = 11;
		#10;
		BinIn = 12;
		#10;
		BinIn = 13;
		#10;
		BinIn = 14;
		#10;
		BinIn = 15;
		#10;

	end
      
endmodule

