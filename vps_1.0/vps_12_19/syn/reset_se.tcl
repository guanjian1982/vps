stop
reg force    {tb.top.csu_se_top.csu_se_nsysreset}              0x0
run 1000 ns
reg force    {tb.top.csu_se_top.csu_se_nsysreset}              0x1
run
