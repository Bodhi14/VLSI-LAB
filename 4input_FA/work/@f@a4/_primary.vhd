library verilog;
use verilog.vl_types.all;
entity FA4 is
    port(
        carry1          : out    vl_logic;
        carry0          : out    vl_logic;
        sum             : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic;
        d               : in     vl_logic
    );
end FA4;
