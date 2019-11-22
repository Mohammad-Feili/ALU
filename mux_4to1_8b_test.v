`timescale 1ns/1ns
module  mux_4to1_8b_test();
reg[7:0] ai,bi,ci,di;
reg[1:0] seli;
wire[7:0] out;

mux_4to1_8b  F(ai,bi,ci,di,seli,out);

initial 
begin

ai=8'b10101010;
bi=8'b01010101;
ci=8'b11001100;
di=8'b00110011;
seli=2'b00;
#10
$display("time=%d,out=%b",$time,out);

seli=2'b01;
#10
$display("time=%d,out=%b",$time,out);

seli=2'b10;
#10
$display("time=%d,out=%b",$time,out);

seli=2'b11;
#10
$display("time=%d,out=%b",$time,out);

end
endmodule
