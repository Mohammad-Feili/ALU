`timescale 1ns/1ns
module ArithmeticMUX(b,s,out);
input b;
input[1:0] s;
output out;
wire y0,y1,y2,y3;
wire bnot ,n0 ,n1;
not (bnot,b);
not (n0,s[0]);
not (n1,s[1]);
parameter F=1'b0, T=1'b1;
and(y0,b,n0,n1);
and(y1,bnot,s[0],n1);
and(y2,F,n0,s[1]);
and(y3,T,s[0],s[1]);
or(out,y0,y1,y2,y3);
endmodule


