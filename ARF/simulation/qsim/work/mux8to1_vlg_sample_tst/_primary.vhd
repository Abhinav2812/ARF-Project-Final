library verilog;
use verilog.vl_types.all;
entity mux8to1_vlg_sample_tst is
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
        sampler_tx      : out    vl_logic
    );
end mux8to1_vlg_sample_tst;
