/*this is the Arithmetic Unit subcircuit*/

`timescale 1ns/1ns

module ArithmeticU(a,b,cin,sel,out,carry,Z);

input[7:0] a,b;

input[1:0] sel;

input cin;

output[7:0] out;

output carry,Z;

wire[6:0] c;

ArithmeticFA   M0(a[0],b[0],cin,sel,out[0],c[0]);

ArithmeticFA   M1(a[1],b[1],cin,sel,out[1],c[1]);

ArithmeticFA   M2(a[2],b[2],cin,sel,out[2],c[2]);

ArithmeticFA   M3(a[3],b[3],cin,sel,out[3],c[3]);

ArithmeticFA   M4(a[4],b[4],cin,sel,out[4],c[4]);

ArithmeticFA   M5(a[5],b[5],cin,sel,out[5],c[5]);

ArithmeticFA   M6(a[6],b[6],cin,sel,out[6],c[6]);

ArithmeticFA   M7(a[7],b[7],cin,sel,out[7],carry);

nor(Z,out[0],out[1],out[2],out[3],out[4],out[5],out[6],out[7]);

endmodule
