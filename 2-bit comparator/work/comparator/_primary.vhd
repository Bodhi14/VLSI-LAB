library verilog;
use verilog.vl_types.all;
entity comparator is
    port(
        gtr             : out    vl_logic;
        eq              : out    vl_logic;
        lt              : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        e               : in     vl_logic
    );
end comparator;
