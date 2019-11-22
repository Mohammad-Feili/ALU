`timescale 1ns/1ns
module mux_testbench();
reg ai,bi;
reg[1:0] si;
wire out;
mux MUX(ai,bi,si,out);
initial
begin
ai=0; bi=0; si=2'b00;
#10
$display("time=%d,out=%b",$time,out);
ai=0; bi=1; si=2'b01;
#10
$display("time=%d,out=%b",$time,out);
ai=0; bi=0; si=2'b10;
#10
$display("time=%d,out=%b",$time,out);
ai=0; bi=0; si=2'b11;
#10
$display("time=%d,out=%b",$time,out);
end
endmodule
