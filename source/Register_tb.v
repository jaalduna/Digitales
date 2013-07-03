`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:58:16 06/26/2013
// Design Name:   Register
// Module Name:   D:/jurgen/archivos/PUC/2013-1/IEE2713/Entrega2/Register_tb.v
// Project Name:  Entrega2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Register_tb;

	// Inputs
	reg [7:0] DataIn;
	reg Load;
	reg Reset;
	reg Clk;

	// Outputs
	wire [7:0] DataOut;

	// Instantiate the Unit Under Test (UUT)
	Register uut (
		.DataIn(DataIn), 
		.DataOut(DataOut), 
		.Load(Load), 
		.Reset(Reset), 
		.Clk(Clk)
	);

	initial begin
		// Initialize Inputs
		DataIn = 0;
		Load = 0;
		Reset = 0;
		Clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		Load=1;
		DataIn=3;
		Clk=1;
		#10;
		Clk=0;
		Load=0;
		DataIn=0;
		#10;
		Clk=1;
		#10;
		Clk=0;
		#10;
		Clk=1;
		#10;
		Clk=0;
		Reset=1;
		#10;
		Clk=1;
		Reset=0;
		#10;
		Clk=0;
		#10;
		Clk=1;

	end
      
endmodule

