module frb_square_there (frame_x, frame_y, frb_square_there, frb_select, clk);
	input clk;
	input [9:0] frame_x;
	input [9:0] frame_y;
	output [1:0] frb_select;
	output frb_square_there;
	
	
wire[9:0] frame_x;
wire[9:0] frame_y;
reg [1:0] frb_select;
reg frb_square_there;

always @(posedge clk) begin
	if(frame_x >= 161 && frame_x < 257 && frame_y >= 415 && frame_y < 447)begin
		frb_square_there <= 1;
		frb_select <= (frame_x - 161) / 32;
	end
	else begin
		frb_square_there <= 0;
	end
end
	

endmodule