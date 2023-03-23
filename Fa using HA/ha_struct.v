module HA(carry, sum, A, B);
output carry, sum;
input A, B;

xor G1(sum, A, B);
and G2(carry, A, B);

endmodule