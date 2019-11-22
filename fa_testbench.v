`timescale 1ns/1ns

module fa_testbench();

reg a,b,c;

wire s,co;

fa  f(a,b,c,s,co);

initial

begin


a=0;b=0;c=0;


#10

$display("time=%d ,sum=%b ,carry=%b",$time,s,co);


a=0;b=0;c=1;


#10

$display("time=%d ,sum=%b ,carry=%b",$time,s,co);


a=0;b=1;c=0;


#10


$display("time=%d ,sum=%b ,carry=%b",$time,s,co);

a=0;b=1;c=1;


#10


$display("time=%d ,sum=%b ,carry=%b",$time,s,co);

a=1;b=0;c=0;


#10

$display("time=%d ,sum=%b ,carry=%b",$time,s,co);


a=1;b=0;c=1;


#10

$display("time=%d ,sum=%b ,carry=%b",$time,s,co);


a=1;b=1;c=0;


#10

$display("time=%d ,sum=%b ,carry=%b",$time,s,co);


a=1;b=1;c=1;
#10

$display("time=%d ,sum=%b ,carry=%b",$time,s,co);


end

endmodule
