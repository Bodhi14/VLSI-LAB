module tb();

reg A,B,e;
wire gtr, eq, lt;

comparator C(gtr, eq, lt, A, B, e); // Instantiation of the comp module

initial
    begin
	#5 A=1'b0; B=1'b0; e=1'b0;
	#1 $display("A = %b : B = %b : e = %b : gtr = %b : eq = %b : lt = %b", A, B, e, gtr, eq, lt); /// output for A=0, B=0, e = 0
	#5 A=1'b0; B=1'b0; e=1'b1;
	#1 $display("A = %b : B = %b : e = %b : gtr = %b : eq = %b : lt = %b", A, B, e, gtr, eq, lt); /// output for A=0, B=0, e = 1
	#5 A=1'b0; B=1'b1; e=1'b0;
	#1 $display("A = %b : B = %b : e = %b : gtr = %b : eq = %b : lt = %b", A, B, e, gtr, eq, lt); /// output for A=0, B=1, e = 0
	#5 A=1'b0; B=1'b1; e=1'b1;
	#1 $display("A = %b : B = %b : e = %b : gtr = %b : eq = %b : lt = %b", A, B, e, gtr, eq, lt); /// output for A=0, B=1, e = 1
	#5 A=1'b1; B=1'b0; e=1'b1;
	#1 $display("A = %b : B = %b : e = %b : gtr = %b : eq = %b : lt = %b", A, B, e, gtr, eq, lt); /// output for A=1, B=0, e = 1
	#5 A=1'b1; B=1'b1; e=1'b1;
	#1 $display("A = %b : B = %b : e = %b : gtr = %b : eq = %b : lt = %b", A, B, e, gtr, eq, lt); /// output for A=1, B=1, e = 1
	
	
	#10 $finish;
	end
	
endmodule