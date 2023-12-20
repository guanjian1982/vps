stop
reg getvalue {tb.O_UTMI_SUSPENDM}
reg force {tb.O_UTMI_SUSPENDM}   0x1

run
report clocks
