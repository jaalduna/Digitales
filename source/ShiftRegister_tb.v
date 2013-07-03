`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:45:33 06/20/2013
// Design Name:   ShiftRegister
// Module Name:   D:/jurgen/archivos/PUC/2013-1/IEE2713/Entrega2/ShiftRegister_tb.v
// Project Name:  Entrega2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ShiftRegister
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ShiftRegister_tb;

	// Inputs
	reg In;
	reg [7:0] LoadIn;
	reg Reset;
	reg Clk;
	reg Load;
	reg Shift;

	// Outputs
	wire Out;
	wire [7:0] DataOut;

	// Instantiate the Unit Under Test (UUT)
	ShiftRegister uut (
		.In(In), 
		.Out(Out), 
		.LoadIn(LoadIn), 
		.DataOut(DataOut), 
		.Reset(Reset), 
		.Clk(Clk), 
		.Load(Load),
		.Shift(Shift)
	);

	initial begin
		// Initialize Inputs
		In = 0;
		LoadIn = 0;
		Reset = 1;
		Clk = 0;
		Load = 0;
		Shift = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		Reset = 0;
		In = 1;
		Clk = 1;
		#5;
		Clk = 0;
		//In = 0;
		#5;
		Clk = 1;
		#5; 
		Clk = 0;
		#5;
		Clk = 1;
		#5; 
		Clk = 0;
		#5;
		Clk = 1;
		#5; 
		Clk = 0;
		#5;
		Clk = 1;
		#5; 
		Clk = 0;
		#5;
		Clk = 1;
		#5; 
		Clk = 0;
		#5;
		Clk = 1;
		#5;
		Clk = 0;
		Load = 1;
		LoadIn = 8'b00110110;
		#5;
		Clk = 1;
		#5;
		Clk = 0;
		Load = 0;
		LoadIn = 0;
		#5;
		Clk = 1;
		#5; 
		Clk = 0;
		#5;
		Clk = 1;
		#5; 
		Clk = 0;
		#5;
		Clk = 1;
		#5; 
		Clk = 0;
		#5;
		Clk = 1;
		#5; 
		Clk = 0;
		#5;
		Clk = 1;
		#5; 
		Clk = 0;
		#5;
		Clk = 1;
		#5; 
		Clk = 0;
		#5;
		Clk = 1;
		#5; 
		Clk = 0;
		#5;
		Clk = 1;
		#5; 
		Clk = 0;
		#5;
		Reset=1;
		Clk = 1;
		#5; 
		Reset=0;
		Clk = 0;
		#5;
		Clk = 1;
		#5; 
		Clk = 0;
		#5;
		Clk = 1;
		#5; 
		Clk = 0;
		#5;
		Clk = 1;
		#5; 
		Clk = 0;
		#5;
		Clk = 1;
		#5; 
		Clk = 0;
		#5;
		Clk = 1;
		#5; 
		Clk = 0;
		

	end
      
endmodule

