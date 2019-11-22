/*this is the Main module*/

`timescale 1ns/1ns

module  ALU(a,b,cin,sel,out,carry,Z);

input[7:0] a,b;

input cin;

input[3:0] sel;

output[7:0] out;

output carry,Z;

wire[7:0]  G0,G1;

ArithmeticU  F0(a,b,cin,sel[1:0],G0,carry,Z);

LogicU         F1(a,b,sel[1:0],G1);

mux_4to1_8b  F2(G0,G1,{1'b0,a[7:1]},{a[6:0],1'b0},sel[3:2],out);

endmodule
