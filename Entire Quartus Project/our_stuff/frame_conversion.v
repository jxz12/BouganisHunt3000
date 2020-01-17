module frame_conversion (vga_x_in, vga_y_in, clk, frame_x, frame_y, frame_there);
	input[9:0] vga_x_in;
	input[9:0] vga_y_in;
	input clk;
	output[9:0] frame_x;
	output[9:0] frame_y;
	output frame_there;


wire [9:0] vga_x_in;
wire [9:0] vga_y_in;
reg[9:0] frame_x;
reg[9:0] frame_y;
reg frame_there;

	
always @(posedge clk)

	//if the current pixel passes the 185 pixel buffer, its coordinates inside the frame are calculated
	if(vga_x_in >= 185 && vga_x_in < 825 && vga_y_in >= 30 && vga_y_in < 510) begin
		frame_x <= vga_x_in - 185;
		frame_y <= vga_y_in - 30;
		frame_there <= 1;
	end
	else begin
		frame_there <= 0;
	end


endmodule