module start_coord_conversion(start_block_coord, start_inblock_coord, start_x, start_y, frame_x, frame_y, start_square_there, clk);
	input clk;
	input [9:0] frame_x;
	input [9:0] frame_y;
	input [9:0] start_x;
	input [9:0] start_y;

	output [2:0] start_block_coord;
	output [9:0] start_inblock_coord;
	output start_square_there;
	
wire [9:0] frame_x;	
wire [9:0] frame_y;
wire [9:0] start_x;
wire [9:0] start_y;

reg [2:0] start_block_coord;
reg [9:0] start_inblock_coord;
reg start_square_there;

always @(posedge clk) begin
	if(frame_x >= start_x && frame_x < start_x + 160
		&& frame_y >= start_y && frame_y < start_y + 32) begin
		
		start_block_coord = ((frame_x - start_x) / 32);
		
		start_inblock_coord = ((frame_x - start_x) % 32) + (32 * ((frame_y - start_y) % 32)) + 1;
		
		start_square_there <= 1;
	end
	
	else begin
		start_square_there <= 0;
	end

end

endmodule