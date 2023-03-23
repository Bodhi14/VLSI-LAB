module comparator(gtr, eq, lt, a, b, e);

input a,b,e;
output gtr, eq, lt;

assign gtr = a & (~b) & e;
assign eq =  ~(a^b) & e;
assign lt = (~a)&b&e;

endmodule
