library verilog;
use verilog.vl_types.all;
entity latch1 is
    port(
        A               : in     vl_logic_vector(15 downto 0);
        strobe          : in     vl_logic;
        O               : out    vl_logic_vector(15 downto 0)
    );
end latch1;
