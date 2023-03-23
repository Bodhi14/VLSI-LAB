library verilog;
use verilog.vl_types.all;
entity twocomp is
    port(
        gtr             : out    vl_logic;
        eq              : out    vl_logic;
        lt              : out    vl_logic;
        a               : in     vl_logic_vector(1 downto 0);
        b               : in     vl_logic_vector(1 downto 0);
        e               : in     vl_logic
    );
end twocomp;
