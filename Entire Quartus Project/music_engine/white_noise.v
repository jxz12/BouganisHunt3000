module white_noise (clk, out);
	input clk;
	output out;
	
reg[15:0] clkDivider;
reg[15:0] counter;

always @(posedge clk)
	if(counter == clkDivider) begin
	
		//modulate clkDivider to produce multiple frequencies
		clkDivider <= clkDivider + 23209;
		
		counter <= 1;
	end
	else begin 
		counter <= counter + 1;
	end
	
reg out;
always @(posedge clk)
	if(counter == 1)
		out <= ~out;

endmodule