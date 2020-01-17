module sprite_detection (vga_x_in, vga_y_in, sprite_x, sprite_y, clk, square_there, rom_coord);
	input[9:0] vga_x_in;
	input[9:0] vga_y_in;
	input[9:0] sprite_x;
	input[9:0] sprite_y;
	input clk;
	output square_there;
	output[9:0] rom_coord;


wire [9:0] vga_x_in;
wire [9:0] vga_y_in;
wire [9:0] sprite_x;
wire [9:0] sprite_y;
reg square_there;
reg[9:0] rom_coord;

	
always @(posedge clk)

	//if the sprite's coordinates coincide with the current pixel being sent to the vga, it calculates the position in the rom
	if(vga_x_in >= sprite_x && vga_x_in < sprite_x + 32 && vga_y_in >= sprite_y && vga_y_in < sprite_y + 32) begin
		rom_coord <= (vga_x_in - sprite_x) + ((vga_y_in - sprite_y) * 32);
		square_there <= 1;
	end
	else begin
		square_there <= 0;
	end


endmodule