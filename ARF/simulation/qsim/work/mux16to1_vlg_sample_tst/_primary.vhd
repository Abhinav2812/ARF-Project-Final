library verilog;
use verilog.vl_types.all;
entity mux16to1_vlg_sample_tst is
    port(
        S0              : in     vl_logic_vector(15 downto 0);
        S1              : in     vl_logic_vector(15 downto 0);
        S2              : in     vl_logic_vector(15 downto 0);
        S3              : in     vl_logic_vector(15 downto 0);
        S4              : in     vl_logic_vector(15 downto 0);
        S5              : in     vl_logic_vector(15 downto 0);
        S6              : in     vl_logic_vector(15 downto 0);
        S7              : in     vl_logic_vector(15 downto 0);
        S8              : in     vl_logic_vector(15 downto 0);
        S9              : in     vl_logic_vector(15 downto 0);
        S10             : in     vl_logic_vector(15 downto 0);
        S11             : in     vl_logic_vector(15 downto 0);
        S12             : in     vl_logic_vector(15 downto 0);
        S13             : in     vl_logic_vector(15 downto 0);
        S14             : in     vl_logic_vector(15 downto 0);
        S15             : in     vl_logic_vector(15 downto 0);
        sel             : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end mux16to1_vlg_sample_tst;
