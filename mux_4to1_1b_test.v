`timescale 1ns/1ns
module  mux_4to1_1b_test();
reg ai,bi,ci,di;
reg[1:0] seli;
wire out;
mux_4to1_1b   MUX(ai,bi,ci,di,seli,out);
initial
begin

ai=0;
bi=1;
ci=0;
di=1;
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
