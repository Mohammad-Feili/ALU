/*this is the full adder and multiplexer sub circuit in arithmetic unit*/

`timescale 1ns/1ns

module ArithmeticFA(a,b,cin,sel,sum,carry);

input a,b,cin;

input[1:0] sel;

output sum,carry;

wire H;

ArithmeticMUX  F1(b,sel,H);

fa  F2(a,H,cin,sum,carry);

endmodule


