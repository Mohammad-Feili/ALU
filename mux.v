`timescale 1ns/1ns

module mux(a,b,s,out);

input  a,b;

input[1:0] s;

output out;

wire   n0,n1;

wire   g0,g1,g2,g3;

wire   y0,y1,y2,y3;

not (n0,s[0]);

not (n1,s[1]);

and (g0,a,b);

or  (g1,a,b);

xor (g2,a,b);

not (g3,a);

and (y0,g0,n0,n1);

and (y1,g1,s[0],n1);

and (y2,g2,n0,s[1]);

and (y3,g3,s[0],s[1]);

or  (out,y0,y1,y2,y3);

endmodule
