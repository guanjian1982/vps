# Infrastructure settings
add_event_channels 1

add_station -name "STN_0" -clock {"clk_a"} -width 2048
add_station -name "STN_1" -clock {"clk_b"} -width 2048

add_probe {"tb.wire_apb_psel"} -station STN_0
add_probe {"tb.wire_apb_penable"} -station STN_0
add_probe {"tb.wire_apb_pwrite"} -station STN_0
add_probe {"tb.wire_apb_paddr"} -station STN_0
add_probe {"tb.wire_apb_pwdata"} -station STN_0
add_probe {"tb.wire_apb_prdata"} -station STN_0
add_probe {"tb.wire_apb_pready"}
add_probe {"tb.wire_apb_pslverr"}
add_probe {"tb.resetn"}
add_probe {"tb.dut_tx_signal"}
add_probe {"tb.dut_rx_signal"}
add_probe {"tb.wire_axi_awaddr"}
add_probe {"tb.wire_axi_awvalid"}
add_probe {"tb.wire_axi_awready"}
add_probe {"tb.wire_axi_awburst"}
add_probe {"tb.wire_axi_awsize"}
add_probe {"tb.wire_axi_awlen"}
add_probe {"tb.wire_axi_awid"}
add_probe {"tb.wire_axi_awcache"}
add_probe {"tb.wire_axi_awqos"}
add_probe {"tb.wire_axi_awprot"}
add_probe {"tb.wire_axi_awregion"}
add_probe {"tb.wire_axi_awlock"}
add_probe {"tb.wire_axi_wdata"}
add_probe {"tb.wire_axi_wvalid"}
add_probe {"tb.wire_axi_wready"}
add_probe {"tb.wire_axi_wstrb"}
add_probe {"tb.wire_axi_wlast"}
add_probe {"tb.wire_axi_bresp"}
add_probe {"tb.wire_axi_bready"}
add_probe {"tb.wire_axi_bvalid"}
add_probe {"tb.wire_axi_bid"}
add_probe {"tb.wire_axi_araddr"}
add_probe {"tb.wire_axi_arvalid"}
add_probe {"tb.wire_axi_arready"}
add_probe {"tb.wire_axi_arburst"}
add_probe {"tb.wire_axi_arsize"}
add_probe {"tb.wire_axi_arlen"}
add_probe {"tb.wire_axi_arid"}
add_probe {"tb.wire_axi_arcache"}
add_probe {"tb.wire_axi_arqos"}
add_probe {"tb.wire_axi_arprot"}
add_probe {"tb.wire_axi_arregion"}
add_probe {"tb.wire_axi_arlock"}
add_probe {"tb.wire_axi_rdata"}
add_probe {"tb.wire_axi_rvalid"}
add_probe {"tb.wire_axi_rready"}
add_probe {"tb.wire_axi_rlast"}
add_probe {"tb.wire_axi_rid"}
add_probe {"tb.wire_axi_rresp"}
