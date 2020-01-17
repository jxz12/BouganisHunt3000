module score_BCD_conversion (score_in, units, tens, hundreds, thousands, clk);
	input[9:0] score_in;
	input clk;
	output[3:0] units;
	output[3:0] tens;
	output[3:0] hundreds;
	output[3:0] thousands;


wire [9:0] score_in;
reg[3:0] units;
reg[3:0] tens;
reg[3:0] hundreds;
reg[3:0] thousands;

	
always @(posedge clk) begin
	
	units <= score_in % 10;
	
	tens <= (score_in % 100) / 10;
	
	hundreds <= (score_in % 1000) / 100;
	
	thousands <= (score_in % 10000) / 1000;
	
end

endmodule