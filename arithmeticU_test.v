`timescale 1ns/1ns
module  arithmeticU_test();
reg[7:0] ai,bi;
reg[1:0] si;
reg ci;
wire[7:0] out;
wire carry,Z;
ArithmeticU   M(ai,bi,ci,si,out,carry,Z);
initial
begin
ai=8'b10101010;
bi=8'b01010101;
ci=1'b1;
si=2'b00;
#10
$display("time=%d,out=%b,carry=%b,Z=%b",$time,out,carry,Z);

si=2'b01;
#10
$display("time=%d,out=%b,carry=%b,Z=%b",$time,out,carry,Z);

si=2'b10;
#10
$display("time=%d,out=%b,carry=%b,Z=%b",$time,out,carry,Z);

si=2'b11;
#10
$display("time=%d,out=%b,carry=%b,Z=%b",$time,out,carry,Z);
end
endmodule

