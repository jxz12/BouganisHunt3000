module detect_crosshair (frame_x_in, frame_y_in, crosshair_x, crosshair_y, clk, crosshair_square_there, quadrant_number, rom_coord);
	input[9:0] frame_x_in;
	input[9:0] frame_y_in;
	input[9:0] crosshair_x;
	input[9:0] crosshair_y;
	input clk;
	output crosshair_square_there;
	output[1:0] quadrant_number;
	output[9:0] rom_coord;


wire [9:0] frame_x_in;
wire [9:0] frame_y_in;
wire [9:0] crosshair_x;
wire [9:0] crosshair_y;
reg crosshair_square_there;
reg[9:0] rom_coord;
reg[1:0] quadrant_number;

	
always @(posedge clk)

	//if the sprite's coordinates coincide with the current pixel being sent to the vga, it calculates the position in the rom
	if(frame_x_in >= crosshair_x - 32 && frame_x_in < crosshair_x + 32
		&& frame_y_in >= crosshair_y - 32 && frame_y_in < crosshair_y + 32) begin
		
		quadrant_number = ((frame_x_in - crosshair_x) / 32) + (2 * ((frame_y_in - crosshair_y) / 32));
		
		rom_coord = ((frame_x_in - crosshair_x) % 32) + (32 * ((frame_y_in - crosshair_y) % 32)) + 2;
		
		crosshair_square_there <= 1;
	end
	else begin
		crosshair_square_there <= 0;
	end


endmodule