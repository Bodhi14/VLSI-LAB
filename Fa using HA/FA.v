module FA(carry, sum, a, b, c);
output carry, sum;
input a, b, c;

HA HA1(c0, s0, a, b);
HA HA2(c1, sum, s0, c);
or G(carry, c1, c0);

endmodule