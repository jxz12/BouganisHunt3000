module blueornot (red_in, green_in, blue_in, bluecheck, clk, red_threshold, blue_threshold);
	input clk; 
	input[9:0] red_in;
	input[9:0] green_in;
	input[9:0] blue_in;
	output bluecheck;
	
	input red_threshold;
	input blue_threshold;
	
wire[9:0] red_in;
wire[9:0] green_in;
wire[9:0] blue_in;
reg bluecheck;

wire[9:0] red_threshold;
wire[9:0] blue_threshold;

always @(posedge clk)

	//if the current pixel is inside the a 100 pixel buffer, its coordinates inside the frame are calculated
	if(red_in > red_threshold && green_in < blue_threshold) begin
		bluecheck <= 1;
	end
	else begin
		bluecheck <= 0;
	end
	

endmodule