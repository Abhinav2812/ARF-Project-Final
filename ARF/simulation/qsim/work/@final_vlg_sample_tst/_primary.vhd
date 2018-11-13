library verilog;
use verilog.vl_types.all;
entity Final_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(15 downto 0);
        B               : in     vl_logic_vector(15 downto 0);
        C               : in     vl_logic_vector(15 downto 0);
        CLK             : in     vl_logic;
        D               : in     vl_logic_vector(15 downto 0);
        E               : in     vl_logic_vector(15 downto 0);
        F               : in     vl_logic_vector(15 downto 0);
        G               : in     vl_logic_vector(15 downto 0);
        H               : in     vl_logic_vector(15 downto 0);
        I               : in     vl_logic_vector(15 downto 0);
        J               : in     vl_logic_vector(15 downto 0);
        K               : in     vl_logic_vector(15 downto 0);
        L               : in     vl_logic_vector(15 downto 0);
        M               : in     vl_logic_vector(15 downto 0);
        N               : in     vl_logic_vector(15 downto 0);
        O               : in     vl_logic_vector(15 downto 0);
        P               : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end Final_vlg_sample_tst;
