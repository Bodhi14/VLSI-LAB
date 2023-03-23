module ripple_carry_adder(Cout,S,A,B,Cin);
input [3:0]A,B;
input Cin;
output [3:0]S;
output Cout;


wire [2:0]C;


FA FA0(C[0], S[0], A[0], B[0], Cin);
FA FA1(C[1], S[1], A[1], B[1], C[0]);
FA FA2(C[2], S[2], A[2], B[2], C[1]);
FA FA3(Cout, S[3], A[3], B[3], C[2]);

endmodule 