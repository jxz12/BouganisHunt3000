module FSM_Pause (clk, out);
	input clk;
	output[4:0] out;

reg[24:0] counter;
reg[24:0] clkDivider = 10000000;

always @(posedge clk)
	if(counter == clkDivider)
		counter <= 1;
	else counter <= counter + 1;

reg[6:0] state;

always @(posedge clk)
	if(counter == 1)
		state <= state + 1;

reg[4:0] out;

always @(state)
	case(state)
		default: out = 25;
	endcase

endmodule