module thirty_fps_clock (clk_in, clk_out);
	input clk_in;
	output clk_out;
	
reg[20:0] clkDivider = 225000;
reg[20:0] counter;

always @(posedge clk_in)
	if(counter == clkDivider)
		counter <= 1;
	else counter <= counter + 1;
	
reg clk_out;
always @(posedge clk_in)
	if(counter == 1)
		clk_out <= ~clk_out;

endmodule