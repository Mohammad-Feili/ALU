`timescale 1ns/1ns
module  ALU_test();
reg[7:0] ai,bi;
reg ci;
reg[3:0] seli;
wire[7:0] out;
wire carry,Z;

ALU     Func(ai,bi,ci,seli,out,carry,Z);

initial
begin
ai=8'b10101010;
bi=8'b01010101;
ci=1'b1;
seli=4'b0000;
#10
$display("time=%d,out=%b,carrry=%b,Z=%b",$time,out,carry,Z);

seli=4'b0001;
#10
$display("time=%d,out=%b,carrry=%b,Z=%b",$time,out,carry,Z);

seli=4'b0010;
#10
$display("time=%d,out=%b,carrry=%b,Z=%b",$time,out,carry,Z);

seli=4'b0011;
#10
$display("time=%d,out=%b,carrry=%b,Z=%b",$time,out,carry,Z);

seli=4'b0100;
#10
$display("time=%d,out=%b,carrry=%b,Z=%b",$time,out,carry,Z);

seli=4'b0101;
#10
$display("time=%d,out=%b,carrry=%b,Z=%b",$time,out,carry,Z);

seli=4'b0110;
#10
$display("time=%d,out=%b,carrry=%b,Z=%b",$time,out,carry,Z);

seli=4'b0111;
#10
$display("time=%d,out=%b,carrry=%b,Z=%b",$time,out,carry,Z);

seli=4'b1000;
#10
$display("time=%d,out=%b,carrry=%b,Z=%b",$time,out,carry,Z);

seli=4'b1001;
#10
$display("time=%d,out=%b,carrry=%b,Z=%b",$time,out,carry,Z);

seli=4'b1010;
#10
$display("time=%d,out=%b,carrry=%b,Z=%b",$time,out,carry,Z);

seli=4'b1011;
#10
$display("time=%d,out=%b,carrry=%b,Z=%b",$time,out,carry,Z);

seli=4'b1100;
#10
$display("time=%d,out=%b,carrry=%b,Z=%b",$time,out,carry,Z);

seli=4'b1101;
#10
$display("time=%d,out=%b,carrry=%b,Z=%b",$time,out,carry,Z);

seli=4'b1110;
#10
$display("time=%d,out=%b,carrry=%b,Z=%b",$time,out,carry,Z);

seli=4'b1111;
#10
$display("time=%d,out=%b,carrry=%b,Z=%b",$time,out,carry,Z);

end
endmodule
