library verilog;
use verilog.vl_types.all;
entity FA is
    port(
        carry           : out    vl_logic;
        sum             : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic
    );
end FA;
