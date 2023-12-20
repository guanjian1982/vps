run 1000 ns
puts "pullup ci700_v1.nMBISTRESET..."
reg force    {tb.top.ci700.ci700_v1.nMBISTRESET}                          0x1
reg getvalue {tb.top.ci700.ci700_v1.nMBISTRESET}
run 5000 ns
puts "pullup ci700.nSRESET fpga_resetn ni700_smn_ARESETN PWROK UART..."
reset -deassert fpga_resetn
reg force    {tb.top.s5_ss_top.u_s5_ss_top.u_system_counter.reset_n}                    0x1
reg getvalue {tb.top.s5_ss_top.u_s5_ss_top.u_system_counter.reset_n}
reg force    {tb.top.gic_gicd.gic700_gicd.nmbistreset}                    0x1
reg getvalue {tb.top.gic_gicd.gic700_gicd.nmbistreset}
reg force    {tb.top.s5_ss_top.u_s5_ss_top.u_nic400_s5.clk0resetn}                    0x1
reg getvalue {tb.top.s5_ss_top.u_s5_ss_top.u_nic400_s5.clk0resetn}
reg force    {tb.top.s5_ss_top.u_s5_ss_top.u_nic400_s5.clk1resetn}                    0x1
reg getvalue {tb.top.s5_ss_top.u_s5_ss_top.u_nic400_s5.clk1resetn}

reg force    {tb.top.ni700_smn_ARESETN}                                   0x1
reg getvalue {tb.top.ni700_smn_ARESETN}
reg force    {tb.top.s5_ss_top.PWROK}                                     0x1
reg getvalue {tb.top.s5_ss_top.PWROK}
reg force    {tb.top.ddr_ctrl_rcsu_0.clk1resetn}                          0x1
reg getvalue {tb.top.ddr_ctrl_rcsu_0.clk1resetn}
run 1000 ns
puts "pullup AP CORE reset..."
reg force    {tb.reset_n}                                                              0x1
reg getvalue {tb.reset_n}
reg force    {tb.top.cluster.ext_cluster_debug_block_nPRESET}                          0x1
reg getvalue {tb.top.cluster.ext_cluster_debug_block_nPRESET}
puts "pullup AP CORE reset done..."

run 5000 ns
puts "pullup CSU_SE reset..."
reg force    {tb.top.csu_se_top.csu_se_nsysreset}                         0x1
reg getvalue {tb.top.csu_se_top.csu_se_nsysreset}


