run 10000 ns
reg release {tb.top.ci700.ci700_v1.nMBISTRESET} 
reg release {tb.top.ci700.nSRESET} 
reg release {tb.top.cluster.cluster_debug_block.nPRESET} 
reg release {tb.top.cluster.nRESET}
reg release {tb.top.cluster.cluster_design.nMBISTRESET} 
reg release {tb.top.cluster.cluster_design.nRESET} 


reg force {tb.top.s5_ss_top.u_s5_ss_top.RESET_IN_} 1
reg force {tb.top.s5_ss_top.u_s5_ss_top.RSMRST_} 0
reg force {tb.top.s5_ss_top.pwrbtn_n} 1
reg force {tb.top.s5_ss_top.u_s5_ss_top.PWRGD} 0
run 50000 ns
reg force {tb.top.s5_ss_top.u_s5_ss_top.RSMRST_} 1
run 50000 ns
reg force {tb.top.s5_ss_top.pwrbtn_n} 0
run 50000 ns
reg force {tb.top.s5_ss_top.pwrbtn_n} 1
run 50000 ns
reg force {tb.top.s5_ss_top.u_s5_ss_top.PWRGD} 1
run 50000 ns
#Need sw to set register value
#tb.top.fch_top.u_fch_core.u_fch_apb_reg.fch_clk_en0 0xffffffff
#tb.top.fch_top.u_fch_core.u_fch_apb_reg.fch_clk_en1 0xffffffff
#tb.top.fch_top.u_fch_core.u_fch_apb_reg.fch_sw_rst_bus 0xffffffff
#tb.top.fch_top.u_fch_core.u_fch_apb_reg.fch_sw_rst_func 0xffffffff
reg force {tb.top.sys_dfd_top.sf_dbg_resetn_o} 0
reg force {tb.top.sys_dfd_top.gpu_dbg_resetn_o} 0
run 10000 ns
reg force {tb.top.sys_dfd_top.sf_dbg_resetn_o} 1
reg force {tb.top.sys_dfd_top.gpu_dbg_resetn_o} 1
run 10000 ns
reg force {tb.top.s5_ss_top.PWROK} 1
reg force {tb.top.sys_dfd_top.nSRST} 1
reg force {tb.top.clk_wrapper.rst_n} 1
reg force {tb.top.s5_ss_top.u_s5_ss_top.u_system_counter.reset_n} 1
reg force {tb.top.s5_ss_top.u_s5_ss_top.u_nic400_s5.clk0resetn} 1
reg force {tb.top.s5_ss_top.u_s5_ss_top.u_nic400_s5.clk1resetn} 1
run 10000 ns
reset -deassert fpga_resetn
reg force {tb.top.s5_ss_top.sensorhub_reset_n} 0x1
reg force {tb.top.s5_ss_top.sensorhub_noc_reset_n} 0x1
#Need sw to set register value
#tb.top.csu_se_top.u_csu_se_s0_top.u_csu_se_s0_core.u_csu_se_pub_apb_reg.se_pub_clk_en 0xffffffff
#tb.top.csu_se_top.u_csu_se_s0_top.u_csu_se_s0_core.u_csu_se_pub_pri_reg.se_pub_clk_en 0xffffffff
#set all divider register to 0
#set csusmn_reset_n[0] to 1
