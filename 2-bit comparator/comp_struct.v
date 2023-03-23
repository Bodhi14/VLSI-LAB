module comparator(gtr, eq, lt, a, b, e);

input a,b,e;
output gtr, eq, lt;


wire w1,w2,w3,w4,w5,w6;

not G1(w1, b);
and G2(w2, w1, a);
and G3(gtr, w2, e);
xor G4(w3, a,b);
not G5(w4, w3);
and G6(eq, w4, e);
not G7(w5, a);
and G8(w6, w5, b);
and G9(lt, w6, e); 

 



endmodule