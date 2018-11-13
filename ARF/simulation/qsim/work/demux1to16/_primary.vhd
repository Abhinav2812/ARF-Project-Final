library verilog;
use verilog.vl_types.all;
entity demux1to16 is
    port(
        S0              : out    vl_logic_vector(15 downto 0);
        S1              : out    vl_logic_vector(15 downto 0);
        S2              : out    vl_logic_vector(15 downto 0);
        S3              : out    vl_logic_vector(15 downto 0);
        S4              : out    vl_logic_vector(15 downto 0);
        S5              : out    vl_logic_vector(15 downto 0);
        S6              : out    vl_logic_vector(15 downto 0);
        S7              : out    vl_logic_vector(15 downto 0);
        S8              : out    vl_logic_vector(15 downto 0);
        S9              : out    vl_logic_vector(15 downto 0);
        S10             : out    vl_logic_vector(15 downto 0);
        S11             : out    vl_logic_vector(15 downto 0);
        S12             : out    vl_logic_vector(15 downto 0);
        S13             : out    vl_logic_vector(15 downto 0);
        S14             : out    vl_logic_vector(15 downto 0);
        S15             : out    vl_logic_vector(15 downto 0);
        sel             : in     vl_logic_vector(3 downto 0);
        I               : in     vl_logic_vector(15 downto 0)
    );
end demux1to16;
