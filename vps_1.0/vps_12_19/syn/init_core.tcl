stop
run 1000 ns
puts "pullup AP CORE reset..."
reg force    {tb.reset_n}                                                              0x1
reg getvalue {tb.reset_n}
reg force    {tb.top.cluster.ext_cluster_debug_block_nPRESET}                          0x1
reg getvalue {tb.top.cluster.ext_cluster_debug_block_nPRESET}
puts "pullup AP CORE reset done..."
run
