module shot_noise_counter (shot_fired, clk, out);
	input clk;
	input shot_fired;
	output out;

reg out;
reg[24:0] counter;
wire shot_fired;
	
always @(posedge clk) begin
	if (shot_fired == 1) begin
		counter <= 12000000;
	end
	if (counter > 1) begin
		out <= 1;
		counter <= counter - 1;
	end
	if(counter == 1) begin
		out <= 0;
	end
end

endmodule