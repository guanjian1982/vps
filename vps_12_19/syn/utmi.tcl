stop

reg getvalue {tb.O_TOP_CHIPMODE0}
reg getvalue {tb.O_TOP_CHIPMODE1}
reg getvalue {tb.O_TOP_SEL_TAP}
reg getvalue {tb.O_TOP_CHIP_RST_B}
#reg getvalue {tb.O_USB2_TAP_TRST_N}
reg getvalue {tb.O_UTMI_RESET}

run 100 ns
reg force {tb.O_TOP_CHIPMODE0}   0x0
reg force {tb.O_TOP_CHIPMODE1}   0x0
reg force {tb.O_TOP_SEL_TAP}     0x0
reg force {tb.O_TOP_CHIP_RST_B}  0x0
#reg force {tb.O_USB2_TAP_TRST_N} 0x0
reg force {tb.O_UTMI_RESET}      0x1
reg force {tb.O_UTMI_RESET}      0x1
#reg force {tb.O_UTMI_TERMSELECT} 0x0
#reg force {tb.O_UTMI_OPMODE0} 0x0
#reg force {tb.O_UTMI_OPMODE1} 0x1

run 100 ns

reg force {tb.O_TOP_CHIPMODE0}   0x0
reg force {tb.O_TOP_CHIPMODE1}   0x0
reg force {tb.O_TOP_SEL_TAP}     0x1
reg force {tb.O_TOP_CHIP_RST_B}  0x0
#reg force {tb.O_USB2_TAP_TRST_N} 0x0
reg force {tb.O_UTMI_RESET}      0x1

run 100 ns

reg force {tb.O_TOP_CHIPMODE0}   0x0
reg force {tb.O_TOP_CHIPMODE1}   0x0
reg force {tb.O_TOP_SEL_TAP}     0x1
reg force {tb.O_TOP_CHIP_RST_B}  0x0
#reg force {tb.O_USB2_TAP_TRST_N} 0x1
reg force {tb.O_UTMI_RESET}      0x1

run 100 ns

reg force {tb.O_TOP_CHIPMODE0}   0x0
reg force {tb.O_TOP_CHIPMODE1}   0x0
reg force {tb.O_TOP_SEL_TAP}     0x1
reg force {tb.O_TOP_CHIP_RST_B}  0x1
#reg force {tb.O_USB2_TAP_TRST_N} 0x1
reg force {tb.O_UTMI_RESET}      0x1

run 100 ns

reg force {tb.O_TOP_CHIPMODE0}   0x0
reg force {tb.O_TOP_CHIPMODE1}   0x0
reg force {tb.O_TOP_SEL_TAP}     0x1
reg force {tb.O_TOP_CHIP_RST_B}  0x1
#reg force {tb.O_USB2_TAP_TRST_N} 0x1
reg force {tb.O_UTMI_RESET}      0x0

run


