module target_coord_conversion(target_block_coord, target_inblock_coord, target_x, target_y, frame_x, frame_y, target_square_there, clk);
	input clk;
	input [9:0] frame_x;
	input [9:0] frame_y;
	input [9:0] target_x;
	input [9:0] target_y;

	output [3:0] target_block_coord;
	output [9:0] target_inblock_coord;
	output target_square_there;
	
wire [9:0] frame_x;	
wire [9:0] frame_y;
wire [9:0] target_x;
wire [9:0] target_y;

reg [3:0] target_block_coord;
reg [9:0] target_inblock_coord;
reg target_square_there;

always @(posedge clk) begin
	if(frame_x >= target_x && frame_x < target_x + 96
		&& frame_y >= target_y && frame_y < target_y + 96 && frame_y < 385) begin
		
		target_block_coord = ((frame_x - target_x) / 32) + (3 * ((frame_y - target_y) / 32));
		
		target_inblock_coord = ((frame_x - target_x) % 32) + (32 * ((frame_y - target_y) % 32)) + 2; // NB +2
		
		target_square_there <= 1;
	end
	
	else begin
		target_square_there <= 0;
	end

end

endmodule