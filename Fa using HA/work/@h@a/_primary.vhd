library verilog;
use verilog.vl_types.all;
entity HA is
    port(
        carry           : out    vl_logic;
        sum             : out    vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic
    );
end HA;
