module FA(carry, sum, A, B, Cin); // created a module
input A, B, Cin; // defining inputs
output carry, sum; // defining outputs

wire w1, w2, w3; // defining wires

xor G1(w1, A, B); // xor A, B
and G2(w2, A, B); // and A, B
xor G3(sum, w1, Cin); // xor AxorB with Cin
and G4(w3, w1, Cin); //and AxorB with Cin
or G5(carry, w2, w3); // or (and A, B) (with and AxorB with Cin)

endmodule