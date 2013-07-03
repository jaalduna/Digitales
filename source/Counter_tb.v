`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:25:41 06/20/2013
// Design Name:   Counter
// Module Name:   D:/jurgen/archivos/PUC/2013-1/IEE2713/Entrega2/Counter_tb.v
// Project Name:  Entrega2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Counter_tb;

	// Inputs
	reg [3:0] DataIn;
	reg Load;
	reg Clk;

	// Outputs
	wire [3:0] DataOut;

	// Instantiate the Unit Under Test (UUT)
	Counter uut (
		.DataIn(DataIn), 
		.DataOut(DataOut), 
		.Load(Load), 
		.Clk(Clk)
	);

	initial begin
		// Initialize Inputs
		DataIn = 0;
		Load = 0;
		Clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		DataIn = 3'b111;
		Load = 1;
		Clk = 1;
		#10;
		Clk = 0;
		Load = 0;
		DataIn = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		#10;
		Clk = 1;
		#10;
		Clk = 0;
		

	end
      
endmodule

