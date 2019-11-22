library verilog;
use verilog.vl_types.all;
entity mux_4to1_1b is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic;
        d               : in     vl_logic;
        sel             : in     vl_logic_vector(1 downto 0);
        \out\           : out    vl_logic
    );
end mux_4to1_1b;
