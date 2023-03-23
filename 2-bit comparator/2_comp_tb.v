module tb();
reg [1:0]A;
reg [1:0]B;
reg e;
wire gtr, eq, lt;

twocomp C(gtr, eq, lt, A, B, e); // Instantiation of the comp module

initial
    begin
	#5 A = 2'b00; B = 2'b00; e=1'b0;
	#1 $display("A = %b : B = %b : e = %b : gtr = %b : eq = %b : lt = %b", A, B, e, gtr, eq, lt); /// output for A=0, B=0, e = 0
	#5 A = 2'b00; B = 2'b01; e=1'b1;
	#1 $display("A = %b : B = %b : e = %b : gtr = %b : eq = %b : lt = %b", A, B, e, gtr, eq, lt); /// output for A=0, B=0, e = 1
	#5 A = 2'b10; B=2'b00; e=1'b0;
	#1 $display("A = %b : B = %b : e = %b : gtr = %b : eq = %b : lt = %b", A, B, e, gtr, eq, lt); /// output for A=0, B=1, e = 0
	#5 A = 2'b10; B=2'b01; e=1'b1;
	#1 $display("A = %b : B = %b : e = %b : gtr = %b : eq = %b : lt = %b", A, B, e, gtr, eq, lt); /// output for A=0, B=1, e = 1
	#5 A= 2'b01; B = 2'b10; e=1'b1;
	#1 $display("A = %b : B = %b : e = %b : gtr = %b : eq = %b : lt = %b", A, B, e, gtr, eq, lt); /// output for A=1, B=0, e = 1
	#5 A= 2'b10; B=2'b11; e=1'b1;
	#1 $display("A = %b : B = %b : e = %b : gtr = %b : eq = %b : lt = %b", A, B, e, gtr, eq, lt); /// output for A=1, B=1, e = 1
	#5 A= 2'b11; B=2'b11; e=1'b1;
	#1 $display("A = %b : B = %b : e = %b : gtr = %b : eq = %b : lt = %b", A, B, e, gtr, eq, lt); /// output for A=1, B=1, e = 1
	
	
	#10 $finish;
	end
	
endmodule