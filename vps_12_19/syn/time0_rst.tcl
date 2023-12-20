reset -assert fpga_resetn
reg force {tb.top.s5_ss_top.sensorhub_reset_n} 0x0
reg force {tb.top.s5_ss_top.sensorhub_noc_reset_n} 0x0
#reg force    {tb.top.s5_ss_top.PWROK}                          0x0
#reg getvalue {tb.top.s5_ss_top.PWROK}
#reg force    {tb.top.ddr_ctrl_rcsu_0.clk1resetn}               0x0
#reg getvalue {tb.top.ddr_ctrl_rcsu_0.clk1resetn}
#reg force    {tb.top.ci700.ci700_v1.nMBISTRESET}               0x0
#reg getvalue {tb.top.ci700.ci700_v1.nMBISTRESET}
#reg force    {tb.top.csu_se_top.csu_se_nsysreset}              0x0
#reg getvalue {tb.top.csu_se_top.csu_se_nsysreset}
#reg force    {tb.top.cluster.ext_cluster_debug_block_nPRESET}  0x0
#reg getvalue {tb.top.cluster.ext_cluster_debug_block_nPRESET}
#reg force    {tb.top.ni700_smn_ARESETN}                        0x0
#reg getvalue {tb.top.ni700_smn_ARESETN}
#reg force    {tb.reset_n}                                      0x0
#reg getvalue {tb.reset_n}
#reg force    {tb.top.csu_se_top.u_sub_csu_core.csu_se_pri_apb_reg.cfgfmaddr}  0xf2
#reg getvalue {tb.top.csu_se_top.u_sub_csu_core.csu_se_pri_apb_reg.cfgfmaddr}
#reg force    {tb.top.csu_se_top.u_sub_csu_core.ni700_se.PD_0_PREQ}            0x0
#reg getvalue {tb.top.csu_se_top.u_sub_csu_core.ni700_se.PD_0_PREQ}
#reg force    {tb.top.csu_se_top.u_sub_csu_core.ni700_se.PD_0_PSTATE}          0x0
#reg getvalue {tb.top.csu_se_top.u_sub_csu_core.ni700_se.PD_0_PSTATE}
#reg force    {tb.top.ci700.cdb_rnfe0_nid0.PWR_QREQN_DEV}       0x1
#reg getvalue {tb.top.ci700.cdb_rnfe0_nid0.PWR_QREQN_DEV}
#reg force    {tb.top.ci700.cdb_rnfe0_nid32.PWR_QREQN_DEV}      0x1
#reg getvalue {tb.top.ci700.cdb_rnfe0_nid32.PWR_QREQN_DEV}
#reg force    {tb.top.ci700.cdb_rnfe0_nid40.PWR_QREQN_DEV}      0x1
#reg getvalue {tb.top.ci700.cdb_rnfe0_nid40.PWR_QREQN_DEV}
#reg force    {tb.top.ci700.cdb_rnfe0_nid8.PWR_QREQN_DEV}       0x1
#reg getvalue {tb.top.ci700.cdb_rnfe0_nid8.PWR_QREQN_DEV}
#reg force    {tb.top.ni700_smn.PD_0_PREQ}                      0x0
#reg getvalue {tb.top.ni700_smn.PD_0_PREQ}
#reg force    {tb.top.ni700_smn.PD_0_PSTATE}                    0x0
#reg getvalue {tb.top.ni700_smn.PD_0_PSTATE}
#reg force    {tb.top.s5_ss_top.u_s5_ss_top.u_system_counter.reset_n}                    0x0
#reg getvalue {tb.top.s5_ss_top.u_s5_ss_top.u_system_counter.reset_n}
#reg force    {tb.top.s5_ss_top.u_s5_ss_top.u_system_counter.u_css600_tsgen.enablecnt}                    0x1
#reg getvalue {tb.top.s5_ss_top.u_s5_ss_top.u_system_counter.u_css600_tsgen.enablecnt}
#reg force    {tb.top.gic_gicd.gic700_gicd.nmbistreset}                    0x0
#reg getvalue {tb.top.gic_gicd.gic700_gicd.nmbistreset}
#reg force    {tb.top.s5_ss_top.u_s5_ss_top.u_nic400_s5.clk0resetn}                    0x0
#reg getvalue {tb.top.s5_ss_top.u_s5_ss_top.u_nic400_s5.clk0resetn}
#reg force    {tb.top.s5_ss_top.u_s5_ss_top.u_nic400_s5.clk1resetn}                    0x0
#reg getvalue {tb.top.s5_ss_top.u_s5_ss_top.u_nic400_s5.clk1resetn}
reg force {tb.top.s5_ss_top.u_s5_ss_top.u_system_counter.reset_n} 0
reg force {tb.top.s5_ss_top.u_s5_ss_top.u_system_counter.u_css600_tsgen.enablecnt} 1
reg force {tb.top.s5_ss_top.u_s5_ss_top.u_nic400_s5.clk0resetn} 0
reg force {tb.top.s5_ss_top.u_s5_ss_top.u_nic400_s5.clk1resetn} 0
reg force {tb.top.ci700.ci700_v1.nMBISTRESET} 0
reg force {tb.top.ci700.nSRESET} 0
reg force {tb.top.cluster.cluster_debug_block.nPRESET} 0
reg force {tb.top.cluster.nRESET} 0
reg force {tb.top.cluster.cluster_design.nMBISTRESET} 0
reg force {tb.top.cluster.cluster_design.nRESET} 0

reg force {tb.top.s5_ss_top.u_s5_ss_top.RESET_IN_} 0
reg force {tb.top.s5_ss_top.u_s5_ss_top.RSMRST_} 0
reg force {tb.top.s5_ss_top.pwrbtn_n} 0
reg force {tb.top.s5_ss_top.u_s5_ss_top.PWRGD} 0
reg force {tb.top.sys_dfd_top.sf_dbg_resetn_o} 0
reg force {tb.top.sys_dfd_top.gpu_dbg_resetn_o} 0
reg force {tb.top.s5_ss_top.PWROK} 0
reg force {tb.top.sys_dfd_top.nSRST} 0
reg force {tb.top.clk_wrapper.rst_n} 0



