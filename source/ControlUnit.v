`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module ControlUnit(
    input Z,
    input G,
    input Q0,
	 input Clk,
	 input Reset,
    output reg LoadA,
    output reg LoadQ,
    output reg LoadB,
    output reg LoadP,
    output reg ResetA,
	 output reg ResetC,
	 output reg DecC,
	 output reg Shift
    );
	 
	 reg [1:0] status;
	 /*always@(Reset)
	 begin
		status <= 1'b0;
		ResetA <= 1'b1;
		ResetC <= 1'b1;
	 end*/
	 
	 always@(posedge Clk,posedge Reset)
	 begin
		if(Reset)
		begin
		status <= 1'b0;
		ResetA <= 1'b1;
		ResetC <= 1'b1;
		end
		else case(status)
		0:
			begin
			if(G)
				begin
					LoadB <= 1;
					LoadP <= 1;
					DecC <= 0;
					ResetC <= 0;
					ResetA <= 0;
					LoadA <= 0;
					LoadQ <= 0;
					status <= 1;
					Shift <= 0;
				end
			else
				begin
					status <=0;
					LoadA <=0;
					LoadQ <=0;
					LoadB <=0;
					LoadP <=0;
					ResetA <=0;
					ResetC <=0;
					DecC <=0;
					Shift <=0;
				end
			end
		1:
			begin
			if(G)
				begin
					LoadQ <= 1;
					LoadA <= 0;
					LoadB <= 0;
					LoadP <= 1;
					ResetA <= 1;
					ResetC <= 1;
					Shift <= 0;
					DecC <= 0;
					if(Q0) status <= 2;
					else status <= 3;
				end
			else
				begin
					status <=1;
					LoadA <=0;
					LoadQ <=0;
					LoadB <=0;
					LoadP <=0;
					ResetA <=0;
					ResetC <=0;
					DecC <=0;
					Shift <=0;
				end
			end
		2:
			begin
				LoadB <= 0;
				LoadP <= 0;
				DecC <= 0;
				ResetC <= 0;
				ResetA <= 0;
				LoadA <= 1;
				LoadQ <= 0;
				Shift <= 0;
				status <= 3;
			end
		3:
			begin
				LoadB <= 0;
				LoadP <= 0;
				DecC <= 1;
				ResetC <= 0;
				ResetA <= 0;
				LoadA <= 0;
				LoadQ <= 0;
				Shift <= 1;
				if(Z) status <= 0;
				else
					if(Q0) status <= 2;
					else status <= 3;
			end
		endcase
	 end


endmodule
