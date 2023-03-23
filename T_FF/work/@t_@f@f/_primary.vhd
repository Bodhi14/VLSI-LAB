library verilog;
use verilog.vl_types.all;
entity T_FF is
    port(
        Q               : out    vl_logic;
        Q_bar           : out    vl_logic;
        T               : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic
    );
end T_FF;
