run 1000 us
reg force {tb.top.RSMRST_L} 0x1
reg force {tb.u_ni700_1.DDR_CLK_RESETn} 0x1
reg force {tb.u_ni700_1.MMHUB_CLK_RESETn} 0x1
reg force {tb.u_ni700_1.CI700_CLK_RESETn} 0x1
run 1000 us
reg force {tb.top.PWRBTN_L} 0x0
reg force {tb.u_ni700_1.PD_0_PREQ} 0x1
run 1000 us
reg force {tb.top.PWRBTN_L} 0x1
reg force {tb.u_ni700_1.PD_0_PREQ} 0x0
run 1000 us
#reg force {tb.top.PWRGD} 0x1

