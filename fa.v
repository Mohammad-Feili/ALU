`timescale  1ns/1ns
module fa(a,b,c,s,co);
input a,b,c;
output s,co;
wire s1,s2,s3;
xor(s,a,b,c);
and(s1,a,b);
and(s2,a,c);
and(s3,b,c);
or(co,s1,s2,s3);
endmodule
