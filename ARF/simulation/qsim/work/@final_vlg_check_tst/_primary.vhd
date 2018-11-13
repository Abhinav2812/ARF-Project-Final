library verilog;
use verilog.vl_types.all;
entity Final_vlg_check_tst is
    port(
        Y1              : in     vl_logic_vector(15 downto 0);
        Y2              : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end Final_vlg_check_tst;
