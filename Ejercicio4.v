module Mux_2_1(input wire D_0, D_1, S_0, output wire Y);
	
	assign Y = S_0? D_1:D_0;
	
endmodule

module Mux_4_1(input wire D_0, D_1, D_2, D_3, S_0, S_1, output wire Y);

	wire Y1,Y2;
	
	Mux_2_1 D0(D_0, D_1, S_0, Y1);
	Mux_2_1 D1(D_2, D_3, S_0, Y2);
	Mux_2_1 Out(Y1, Y2, S_1, Y);

endmodule

module Mux_8_1(input wire D_0, D_1, D_2, D_3, D_4, D_5, D_6, D_7, S_0, S_1, S_2, output wire Y);
	
	wire Y1,Y2,Y3,Y4;
	
	Mux_2_1 D0(D_0, D_1, S_0, Y1);
	Mux_2_1 D1(D_2, D_3, S_0, Y2);
	Mux_2_1 D2(D_4, D_5, S_0, Y3);
	Mux_2_1 D3(D_6, D_7, S_0, Y4);
	Mux_4_1 Out(Y1, Y2, Y3, Y4, S_1, S_2, Y);

endmodule

module Tablal_Mux_8_1(input wire D_0, D_1, D_2, D_3, D_4, D_5, D_6, D_7, A, B, C, output wire Y);

	Mux_8_1 T1(D_0, D_1, D_2, D_3, D_4, D_5, D_6, D_7, C, B, A, Y);
 
endmodule

module Tabla2_Mux_8_1(input wire D_0, D_1, D_2, D_3, D_4, D_5, D_6, D_7, A, B, C, output wire Y);

	Mux_8_1 T2(D_0, D_1, D_2, D_3, D_4, D_5, D_6, D_7, C, B, A, Y);
 
endmodule

module Tablal_Mux_4_1(input wire A, B, C, output wire Y);

	wire NC;
	not (NC, C);
	Mux_4_1 T1(C, NC, NC, C, B, A, Y);
 
endmodule

module Tabla2_Mux_4_1(input wire DG, A, B, C, output wire Y);

	wire NC;
	not (NC, C);
	Mux_4_1 T2(NC, DG, C, NC, B, A, Y);
 
endmodule

module Tablal_Mux_2_1(input wire A, B, C, output wire Y);

	wire D0, D1;
	xor (D0, B, C);
	not (D1, D0);
	Mux_2_1 T1(D0, D1, A, Y);
 
endmodule

module Tabla2_Mux_2_1(input wire A, B, C, output wire Y);

	wire D0, D1;
	nor (D0, B, C);
	nand (D1, B, C);
	Mux_2_1 T2(D0, D1, A, Y);
 
endmodule