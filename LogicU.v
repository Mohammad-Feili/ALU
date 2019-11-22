/*this is the Logic Unit*/

`timescale 1ns/1ns

module LogicU(a,b,s,out);

input[7:0] a,b;

input[1:0] s;

output[7:0] out;

mux M0(a[0],b[0],s,out[0]);

mux M1(a[1],b[1],s,out[1]);

mux M2(a[2],b[2],s,out[2]);

mux M3(a[3],b[3],s,out[3]);

mux M4(a[4],b[4],s,out[4]);

mux M5(a[5],b[5],s,out[5]);

mux M6(a[6],b[6],s,out[6]);

mux M7(a[7],b[7],s,out[7]);

endmodule




