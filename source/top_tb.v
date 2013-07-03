`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:29:27 07/03/2013
// Design Name:   Top
// Module Name:   C:/Users/Juaco/Documents/GitHub/Digitales/source/top_tb.v
// Project Name:  Entrega2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module top_tb;

	// Inputs
	reg btn;
	reg [7:0] sw;
	reg clk;

	// Outputs
	wire [27:0] display;

	// Instantiate the Unit Under Test (UUT)
	Top uut (
		.btn(btn), 
		.sw(sw), 
		.clk(clk), 
		.display(display)
	);

	initial begin
		// Initialize Inputs
		btn = 0;
		sw = 8'd5;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		btn = 1;
		#50;
		btn = 0;

	end
	
	always
		begin
			#10; clk = !clk;
		end
      
endmodule

