`timescale 1ns/1ns
module arithmeticFA_test();
reg ai,bi,ci;
reg[1:0] si;
wire sum,cout;
ArithmeticFA  F(ai,bi,ci,si,sum,cout);
initial
begin
ai=1'b0;
bi=1'b1;
ci=1'b0;
si=2'b00;
#10
$display("time=%d,sum=%b,carry=%b",$time,sum,cout);

si=2'b01;
#10
$display("time=%d,sum=%b,carry=%b",$time,sum,cout);

si=2'b10;
#10
$display("time=%d,sum=%b,carry=%b",$time,sum,cout);

si=2'b11;
#10
$display("time=%d,sum=%b,carry=%b",$time,sum,cout);
end
endmodule
