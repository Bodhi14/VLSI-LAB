module tb();

reg A, B, C, D;
wire carry1, carry0, sum;

FA4 DUT(carry1, carry0, sum, A, B, C, D);

initial
    begin
	#5 A=1'b0; B=1'b0; C=1'b0; D=1'b0;
	#1 $display("A = %b : B = %b : C = %b : D = %b : carry1 = %b : carry0 = %b : sum = %b : dec = %d", A, B, C, D, carry1, carry0, sum, {carry1, carry0, sum});
	#5 A=1'b1; B=1'b0; C=1'b0; D=1'b0;
	#1 $display("A = %b : B = %b : C = %b : D = %b : carry1 = %b : carry0 = %b : sum = %b : dec = %d", A, B, C, D, carry1, carry0, sum, {carry1, carry0, sum});
	#5 A=1'b0; B=1'b1; C=1'b0; D=1'b0;
	#1 $display("A = %b : B = %b : C = %b : D = %b : carry1 = %b : carry0 = %b : sum = %b : dec = %d", A, B, C, D, carry1, carry0, sum, {carry1, carry0, sum});
	#5 A=1'b1; B=1'b1; C=1'b0; D=1'b0;
	#1 $display("A = %b : B = %b : C = %b : D = %b : carry1 = %b : carry0 = %b : sum = %b : dec = %d", A, B, C, D, carry1, carry0, sum, {carry1, carry0, sum});
	#5 A=1'b0; B=1'b0; C=1'b1; D=1'b0;
	#1 $display("A = %b : B = %b : C = %b : D = %b : carry1 = %b : carry0 = %b : sum = %b : dec = %d", A, B, C, D, carry1, carry0, sum, {carry1, carry0, sum});
	#5 A=1'b1; B=1'b0; C=1'b1; D=1'b0;
	#1 $display("A = %b : B = %b : C = %b : D = %b : carry1 = %b : carry0 = %b : sum = %b : dec = %d", A, B, C, D, carry1, carry0, sum, {carry1, carry0, sum});
	#5 A=1'b0; B=1'b1; C=1'b1; D=1'b0;
	#1 $display("A = %b : B = %b : C = %b : D = %b : carry1 = %b : carry0 = %b : sum = %b : dec = %d", A, B, C, D, carry1, carry0, sum, {carry1, carry0, sum});
	#5 A=1'b1; B=1'b1; C=1'b1; D=1'b0;
	#1 $display("A = %b : B = %b : C = %b : D = %b : carry1 = %b : carry0 = %b : sum = %b : dec = %d", A, B, C, D, carry1, carry0, sum, {carry1, carry0, sum});
	#5 A=1'b0; B=1'b0; C=1'b0; D=1'b1;
	#1 $display("A = %b : B = %b : C = %b : D = %b : carry1 = %b : carry0 = %b : sum = %b : dec = %d", A, B, C, D, carry1, carry0, sum, {carry1, carry0, sum});
	#5 A=1'b1; B=1'b0; C=1'b0; D=1'b1;
	#1 $display("A = %b : B = %b : C = %b : D = %b : carry1 = %b : carry0 = %b : sum = %b : dec = %d", A, B, C, D, carry1, carry0, sum, {carry1, carry0, sum});
	#5 A=1'b0; B=1'b1; C=1'b0; D=1'b1;
	#1 $display("A = %b : B = %b : C = %b : D = %b : carry1 = %b : carry0 = %b : sum = %b : dec = %d", A, B, C, D, carry1, carry0, sum, {carry1, carry0, sum});
	#5 A=1'b1; B=1'b1; C=1'b0; D=1'b1;
	#1 $display("A = %b : B = %b : C = %b : D = %b : carry1 = %b : carry0 = %b : sum = %b : dec = %d", A, B, C, D, carry1, carry0, sum, {carry1, carry0, sum});
	#5 A=1'b0; B=1'b0; C=1'b1; D=1'b1;
	#1 $display("A = %b : B = %b : C = %b : D = %b : carry1 = %b : carry0 = %b : sum = %b : dec = %d", A, B, C, D, carry1, carry0, sum, {carry1, carry0, sum});
	#5 A=1'b1; B=1'b0; C=1'b1; D=1'b1;
	#1 $display("A = %b : B = %b : C = %b : D = %b : carry1 = %b : carry0 = %b : sum = %b : dec = %d", A, B, C, D, carry1, carry0, sum, {carry1, carry0, sum});
	#5 A=1'b0; B=1'b1; C=1'b1; D=1'b1;
	#1 $display("A = %b : B = %b : C = %b : D = %b : carry1 = %b : carry0 = %b : sum = %b : dec = %d", A, B, C, D, carry1, carry0, sum, {carry1, carry0, sum});
	#5 A=1'b1; B=1'b1; C=1'b1; D=1'b1;
	#1 $display("A = %b : B = %b : C = %b : D = %b : carry1 = %b : carry0 = %b : sum = %b : dec = %d", A, B, C, D, carry1, carry0, sum, {carry1, carry0, sum});
	
	#10 $finish;
	end
	
endmodule