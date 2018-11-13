library verilog;
use verilog.vl_types.all;
entity add is
    port(
        A               : in     vl_logic_vector(15 downto 0);
        B               : in     vl_logic_vector(15 downto 0);
        en              : in     vl_logic;
        O               : out    vl_logic_vector(15 downto 0)
    );
end add;
