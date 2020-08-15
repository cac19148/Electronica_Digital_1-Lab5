module testbench();
	
	reg A, B, C;
	wire Y1, Y2, Y3, Y4, Y5, Y6, DG, DH;
	assign DG = 0;
	assign DH = 1;
	
	Tablal_Mux_8_1	T_1(DG, DH, DH, DG, DH, DG, DG, DH, A, B, C, Y1);
	Tabla2_Mux_8_1	T_2(DH, DG, DG, DG, DG, DH, DH, DG, A, B, C, Y2);
	Tablal_Mux_4_1  t_1(A, B, C, Y3);
	Tabla2_Mux_4_1  t_2(DG, A, B, C, Y4);
	Tablal_Mux_2_1  T1(A, B, C, Y5);
	Tabla2_Mux_2_1  T2(A, B, C, Y6);
	
	initial begin
	#1
	$display("");
	$display("<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<IMPLEMENTACION MUX 8:1>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
	$display("");
	$display("EJERCICIO 1: TABLA 1 ");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", A, B, C, Y1);
       A = 0; B = 0; C = 0;
    #1 A = 0; B = 0; C = 1;
    #1 A = 0; B = 1; C = 0;
    #1 A = 0; B = 1; C = 1;
    #1 A = 1; B = 0; C = 0;
    #1 A = 1; B = 0; C = 1;
    #1 A = 1; B = 1; C = 0;
    #1 A = 1; B = 1; C = 1;
	#1 $display("");
  end
  
	initial begin
	#10
	$display("EJERCICIO 1: TABLA 2 ");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", A, B, C, Y2);
       A = 0; B = 0; C = 0;
    #1 A = 0; B = 0; C = 1;
    #1 A = 0; B = 1; C = 0;
    #1 A = 0; B = 1; C = 1;
    #1 A = 1; B = 0; C = 0;
    #1 A = 1; B = 0; C = 1;
    #1 A = 1; B = 1; C = 0;
    #1 A = 1; B = 1; C = 1;
	#1 $display("");
  end
  
	initial begin
	#20
	$display("");
	$display("<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<IMPLEMENTACION MUX 4:1>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
	$display("");
	$display("EJERCICIO 1: TABLA 1 ");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", A, B, C, Y3);
       A = 0; B = 0; C = 0;
    #1 A = 0; B = 0; C = 1;
    #1 A = 0; B = 1; C = 0;
    #1 A = 0; B = 1; C = 1;
    #1 A = 1; B = 0; C = 0;
    #1 A = 1; B = 0; C = 1;
    #1 A = 1; B = 1; C = 0;
    #1 A = 1; B = 1; C = 1;
	#1 $display("");
  end
  
	initial begin
	#30
	$display("EJERCICIO 1: TABLA 2 ");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", A, B, C, Y4);
       A = 0; B = 0; C = 0;
    #1 A = 0; B = 0; C = 1;
    #1 A = 0; B = 1; C = 0;
    #1 A = 0; B = 1; C = 1;
    #1 A = 1; B = 0; C = 0;
    #1 A = 1; B = 0; C = 1;
    #1 A = 1; B = 1; C = 0;
    #1 A = 1; B = 1; C = 1;
	#1 $display("");
  end
  
	initial begin
	#40
	$display("");
	$display("<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<IMPLEMENTACION MUX 2:1>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
	$display("");
	$display("EJERCICIO 1: TABLA 1 ");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", A, B, C, Y5);
       A = 0; B = 0; C = 0;
    #1 A = 0; B = 0; C = 1;
    #1 A = 0; B = 1; C = 0;
    #1 A = 0; B = 1; C = 1;
    #1 A = 1; B = 0; C = 0;
    #1 A = 1; B = 0; C = 1;
    #1 A = 1; B = 1; C = 0;
    #1 A = 1; B = 1; C = 1;
	#1 $display("");
  end
  
	initial begin
	#50
	$display("EJERCICIO 1: TABLA 2 ");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", A, B, C, Y6);
       A = 0; B = 0; C = 0;
    #1 A = 0; B = 0; C = 1;
    #1 A = 0; B = 1; C = 0;
    #1 A = 0; B = 1; C = 1;
    #1 A = 1; B = 0; C = 0;
    #1 A = 1; B = 0; C = 1;
    #1 A = 1; B = 1; C = 0;
    #1 A = 1; B = 1; C = 1;
	#1 $display("");
  end
	
	
	initial
    #60	$finish;
	
  initial begin
    $dumpfile("Ejercicio4_tb.vcd");
    $dumpvars(0, testbench);
  end

endmodule