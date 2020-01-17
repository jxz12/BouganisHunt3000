module Low_G_Sharp (clk, out);
	input clk;
	output out;
	
reg[16:0] clkDivider = 60197;
reg[16:0] counter;

always @(posedge clk)
	if(counter == clkDivider)
		counter <= 1;
	else counter <= counter + 1;
	
reg out;
always @(posedge clk)
	if(counter == 1)
		out <= ~out;

endmodule