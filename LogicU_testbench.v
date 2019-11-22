`timescale 1ns/1ns
module LogicU_testbench();
reg[7:0] ai,bi;
reg[1:0] si;
wire[7:0] out;
LogicU  logicu(ai ,bi ,si ,out);
initial
begin

ai=8'b10101010;
bi=8'b01010101;
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
