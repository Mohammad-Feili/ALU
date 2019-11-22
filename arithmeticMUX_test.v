`timescale 1ns/1ns
module arithmeticMUX_test();
reg bi;
reg[1:0] si;
wire out;
ArithmeticMUX  AMX(bi,si,out);
initial
begin

bi=1'b1;
si=2'b00;
#10
$display("time=%d,out=%b",$time,out);

si=2'b01;
#10
$display("time=%d,out=%b",$time,out);

si=2'b10;
#10
$display("time=%d,out=%b",$time,out);

si=2'b11;
#10
$display("time=%d,out=%b",$time,out);
end
endmodule


