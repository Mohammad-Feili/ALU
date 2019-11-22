library verilog;
use verilog.vl_types.all;
entity ArithmeticU is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        cin             : in     vl_logic;
        sel             : in     vl_logic_vector(1 downto 0);
        \out\           : out    vl_logic_vector(7 downto 0);
        carry           : out    vl_logic;
        Z               : out    vl_logic
    );
end ArithmeticU;
