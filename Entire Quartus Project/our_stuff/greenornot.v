module greenornot (red_in, green_in, blue_in, greencheck, clk, red_threshold, blue_threshold);
	input clk; 
	input[9:0] red_in;
	input[9:0] green_in;
	input[9:0] blue_in;
	output greencheck;
	
	input red_threshold;
	input blue_threshold;
	
wire[9:0] red_in;
wire[9:0] green_in;
wire[9:0] blue_in;
reg greencheck;

wire[9:0] red_threshold;
wire[9:0] blue_threshold;

always @(posedge clk)

	//if the current pixel is inside the a 100 pixel buffer, its coordinates inside the frame are calculated
	if(red_in > red_threshold && blue_in < blue_threshold) begin
		greencheck <= 1;
	end
	else begin
		greencheck <= 0;
	end


endmodule