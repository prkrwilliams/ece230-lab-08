module four_demux (
	input [3:0] In,
	input [1:0] Sel,
	input Enable,
	output [3:0] local_lib,
	output [3:0] fire_department,
	output [3:0] school,
	output [3:0] rib_shack
);

	assign local_lib = (Sel == 2'b00 && Enable ==1) ? In : 0;
	assign fire_department = (Sel == 2'b01 && Enable == 1) ? In : 0;
	assign school = (Sel == 2'b10 && Enable == 1) ? In : 0;
	assign rib_shack = (Sel == 2'b11 && Enable == 1) ? In : 0;

endmodule
