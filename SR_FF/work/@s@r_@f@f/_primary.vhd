library verilog;
use verilog.vl_types.all;
entity SR_FF is
    port(
        Q               : out    vl_logic;
        Q_bar           : out    vl_logic;
        S               : in     vl_logic;
        R               : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic
    );
end SR_FF;
