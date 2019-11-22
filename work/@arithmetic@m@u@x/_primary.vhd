library verilog;
use verilog.vl_types.all;
entity ArithmeticMUX is
    generic(
        F               : vl_logic := Hi0;
        T               : vl_logic := Hi1
    );
    port(
        b               : in     vl_logic;
        s               : in     vl_logic_vector(1 downto 0);
        \out\           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of F : constant is 1;
    attribute mti_svvh_generic_type of T : constant is 1;
end ArithmeticMUX;
