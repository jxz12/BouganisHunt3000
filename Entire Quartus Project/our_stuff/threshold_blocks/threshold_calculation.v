module threshold_calculation (red_switch_1, blue_switch_1, red_switch_2, blue_switch_2, red_threshold_1, blue_threshold_1, red_threshold_2, blue_threshold_2, clk);
	input clk;
	
	input red_switch_1;
	input blue_switch_1;
	input red_switch_2;
	input blue_switch_2;
	
	output red_threshold_1;
	output blue_threshold_1;
	output red_threshold_2;
	output blue_threshold_2;
	
wire red_switch_1;
wire blue_switch_1;
wire red_switch_2;
wire blue_switch_2;

reg previous_red_switch_1;
reg previous_blue_switch_1;
reg previous_red_switch_2;
reg previous_blue_switch_2;

reg[9:0] red_threshold_1;
reg[9:0] blue_threshold_1;
reg[9:0] red_threshold_2;
reg[9:0] blue_threshold_2;

always @(posedge clk) begin
	if(red_switch_1 == 1 && previous_red_switch_1 == 0) begin
		red_threshold_1 <= red_threshold_1 + 8;
	end
	previous_red_switch_1 <= red_switch_1;
end

always @(posedge clk) begin
	if(blue_switch_1 == 1 && previous_blue_switch_1 == 0) begin
		blue_threshold_1 <= blue_threshold_1 + 8;
	end
	previous_blue_switch_1 <= blue_switch_1;
end


always @(posedge clk) begin
	if(red_switch_2 == 1 && previous_red_switch_2 == 0) begin
		red_threshold_2 <= red_threshold_2 + 8;
	end
	previous_red_switch_2 <= red_switch_2;
end


always @(posedge clk) begin
	if(blue_switch_2 == 1 && previous_blue_switch_2 == 0) begin
		blue_threshold_2 <= blue_threshold_2 + 8;
	end
	previous_blue_switch_2 <= blue_switch_2;
end

endmodule