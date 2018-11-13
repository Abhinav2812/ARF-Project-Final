library verilog;
use verilog.vl_types.all;
entity mux8to1 is
    port(
        S0              : in     vl_logic_vector(15 downto 0);
        S1              : in     vl_logic_vector(15 downto 0);
        S2              : in     vl_logic_vector(15 downto 0);
        S3              : in     vl_logic_vector(15 downto 0);
        S4              : in     vl_logic_vector(15 downto 0);
        S5              : in     vl_logic_vector(15 downto 0);
        S6              : in     vl_logic_vector(15 downto 0);
        S7              : in     vl_logic_vector(15 downto 0);
        sel             : in     vl_logic_vector(2 downto 0);
        O               : out    vl_logic_vector(15 downto 0)
    );
end mux8to1;
