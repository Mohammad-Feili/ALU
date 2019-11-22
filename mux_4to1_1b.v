/*this is the multiplexer 4to1 1_bit*/

`timescale 1ns/1ns

module mux_4to1_1b(a,b,c,d,sel,out);

input a,b,c,d;

input[1:0] sel;

output out;

wire h0,h1,h2,h3;

wire n0,n1;

not(n0,sel[0]);

not(n1,sel[1]);

and (h0,a,n0,n1);

and (h1,b,sel[0],n1);

and (h2,c,n0,sel[1]);

and (h3,d,sel[0],sel[1]);

or    (out,h0,h1,h2,h3);

endmodule
