library verilog;
use verilog.vl_types.all;
entity binary_2_gray is
    port(
        G               : out    vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0)
    );
end binary_2_gray;
