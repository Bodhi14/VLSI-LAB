library verilog;
use verilog.vl_types.all;
entity decoder3_8 is
    port(
        Y               : out    vl_logic_vector(7 downto 0);
        A               : in     vl_logic_vector(1 downto 0);
        E               : in     vl_logic
    );
end decoder3_8;
