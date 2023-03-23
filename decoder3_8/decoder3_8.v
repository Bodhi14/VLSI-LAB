module decoder3_8(Y,A,E);

input [1:0]A;
input E;
output [7:0]Y;
decoder2_4 D1(Y[7:4],A[1:0],E);
decoder2_4 D2(Y[3:0],A[1:0],~E);
endmodule

