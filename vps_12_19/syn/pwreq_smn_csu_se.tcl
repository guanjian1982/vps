run 1000 ns
reg force    {tb.top.ni700_smn.PD_0_PREQ}                      0x1
reg getvalue {tb.top.ni700_smn.PD_0_PREQ}
reg force    {tb.top.ni700_smn.PD_0_PSTATE}                    0x8
reg getvalue {tb.top.ni700_smn.PD_0_PSTATE}
run 1000 ns
reg force    {tb.top.ni700_smn.PD_0_PREQ}                      0x0
reg getvalue {tb.top.ni700_smn.PD_0_PREQ}
run 1000 ns
reg force    {tb.top.csu_se_top.u_sub_csu_core.ni700_se.PD_0_PREQ}            0x1
reg getvalue {tb.top.csu_se_top.u_sub_csu_core.ni700_se.PD_0_PREQ}
reg force    {tb.top.csu_se_top.u_sub_csu_core.ni700_se.PD_0_PSTATE}          0x8
reg getvalue {tb.top.csu_se_top.u_sub_csu_core.ni700_se.PD_0_PSTATE}
run 1000 ns
reg force    {tb.top.csu_se_top.u_sub_csu_core.ni700_se.PD_0_PREQ}            0x0
reg getvalue {tb.top.csu_se_top.u_sub_csu_core.ni700_se.PD_0_PREQ}

