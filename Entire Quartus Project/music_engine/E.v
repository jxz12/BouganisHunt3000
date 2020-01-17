module E (clk, out);
	input clk;
	output out;
	
reg[15:0] clkDivider = 37921;
reg[15:0] counter;

always @(posedge clk)
	if(counter == clkDivider)
		counter <= 1;
	else counter <= counter + 1;
	
reg out;
always @(posedge clk)
	if(counter == 1)
		out <= ~out;

endmodule