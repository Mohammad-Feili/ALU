library verilog;
use verilog.vl_types.all;
entity ArithmeticFA is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        cin             : in     vl_logic;
        sel             : in     vl_logic_vector(1 downto 0);
        sum             : out    vl_logic;
        carry           : out    vl_logic
    );
end ArithmeticFA;
