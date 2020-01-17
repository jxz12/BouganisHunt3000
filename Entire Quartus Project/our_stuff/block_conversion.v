module block_conversion (frame_x_in, frame_y_in, clk, block_coord, inblock_coord);
	input[9:0] frame_x_in;
	input[9:0] frame_y_in;
	input clk;
	output[8:0] block_coord;
	output[9:0] inblock_coord;


wire [9:0] frame_x_in;
wire [9:0] frame_y_in;
reg[8:0] block_coord;
reg[9:0] inblock_coord;
	
always @(posedge clk) begin
	block_coord <= (frame_x_in / 32) + (20 * (frame_y_in / 32));
	
	inblock_coord <= (frame_x_in % 32) + (32 * (frame_y_in % 32));
	
end

endmodule