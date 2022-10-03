library verilog;
use verilog.vl_types.all;
entity ELA is
    generic(
        REQUEST         : vl_logic_vector(2 downto 0) := (Hi0, Hi0, Hi0);
        DATAIN          : vl_logic_vector(2 downto 0) := (Hi0, Hi0, Hi1);
        INTERPOLATION   : vl_logic_vector(2 downto 0) := (Hi0, Hi1, Hi0);
        READ_FINISH     : vl_logic_vector(2 downto 0) := (Hi0, Hi1, Hi1);
        INTERPOLATION_FINISH: vl_logic_vector(2 downto 0) := (Hi1, Hi0, Hi0)
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        ready           : in     vl_logic;
        in_data         : in     vl_logic_vector(7 downto 0);
        data_rd         : in     vl_logic_vector(7 downto 0);
        req             : out    vl_logic;
        wen             : out    vl_logic;
        addr            : out    vl_logic_vector(12 downto 0);
        data_wr         : out    vl_logic_vector(7 downto 0);
        done            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of REQUEST : constant is 2;
    attribute mti_svvh_generic_type of DATAIN : constant is 2;
    attribute mti_svvh_generic_type of INTERPOLATION : constant is 2;
    attribute mti_svvh_generic_type of READ_FINISH : constant is 2;
    attribute mti_svvh_generic_type of INTERPOLATION_FINISH : constant is 2;
end ELA;
