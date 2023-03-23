module twocomp(gtr, eq, lt, a, b, e);

input [1:0]a;
input [1:0]b;
input e;
output gtr, eq, lt;

wire gtr0, eq0, lt0, gtr1, lt1;

comparator comp1(gtr0, eq0, lt0, a[1], b[1], e);
comparator comp2(gtr1, eq, lt1, a[0], b[0], eq0);
or G1(gtr, gtr0, gtr1);
or G2(lt, lt0, lt1);

endmodule