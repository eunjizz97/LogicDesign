//	-------------------------------
//	module making six_digit_seg
//	-------------------------------
module	six_digit(
		o_six_digit_seg,
		i_mode,
		i_seg_0,
		i_seg_1,
		i_seg_2,
		i_seg_3,
		i_seg_4,
		i_seg_5,
		i_seg_6,
		i_seg_7,
		i_seg_8,
		i_seg_9,
		i_seg_10,
		i_seg_11);

output	[41:0]	o_six_digit_seg	;
input	[2:0]	i_mode		;
input	[6:0]	i_seg_0		;
input	[6:0]	i_seg_1		;
input	[6:0]	i_seg_2		;
input	[6:0]	i_seg_3		;
input	[6:0]	i_seg_4		;
input	[6:0]	i_seg_5		;
input	[6:0]	i_seg_6		;
input	[6:0]	i_seg_7		;
input	[6:0]	i_seg_8		;
input	[6:0]	i_seg_9		;
input	[6:0]	i_seg_10		;
input	[6:0]	i_seg_11	;

wire	[41:0]	o_six_digit_seg	;

assign	{o_six_digit_seg} =  (i_mode == 3'b100)||(i_mode == 3'b101) ? { i_seg_4, i_seg_5, i_seg_2, i_seg_3, i_seg_0, i_seg_1 } : {i_seg_10, i_seg_11, i_seg_8, i_seg_9,i_seg_6 ,i_seg_7}

endmodule



//===============================================================
// top module
//----------------------------------------
six_digit(
		.o_six_digit_seg  (o_six_digit_seg),
		.i_mode     (o_mode),
		.i_seg_0    (o_seg_0),
		.i_seg_1    (o_seg_1),
		.i_seg_2    (o_seg_2),
		.i_seg_3    (o_seg_3),
		.i_seg_4    (o_seg_4),
		.i_seg_5    (o_seg_5),
		.i_seg_6    (o_seg_6),
		.i_seg_7    (o_seg_7),
		.i_seg_8    (o_seg_8),
		.i_seg_9    (o_seg_9),
		.i_seg_10   (o_seg_10),
		.i_seg_11   (o_seg_11));


led_disp	u_led_disp(
				.o_seg		(o_seg),
				.o_seg_dp	(o_seg_dp),
				.o_seg_enb	(o_seg_enb),
				.i_six_digit_seg(o_six_digit_seg),
				.i_six_dp	(6'd0),
				.clk		(clk),
				.rst_n		(rst_n));

