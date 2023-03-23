module FA4(carry1, carry0, sum, a, b, c, d);
output carry1, carry0, sum;
input a, b, c, d;
wire c0,s0,c1;

FA FA1(c0, s0, a, b, c);
HA HA1(c1, sum, s0, d);
HA HA2(carry1, carry0, c0, c1);

endmodule