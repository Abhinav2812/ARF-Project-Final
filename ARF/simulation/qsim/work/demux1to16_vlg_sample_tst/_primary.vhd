library verilog;
use verilog.vl_types.all;
entity demux1to16_vlg_sample_tst is
    port(
        I               : in     vl_logic_vector(15 downto 0);
        sel             : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end demux1to16_vlg_sample_tst;
