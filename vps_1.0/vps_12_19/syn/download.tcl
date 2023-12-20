#puts "Flush flash to default version? Y/N"
#set cmd [gets stdin]
##puts $cmd
#set host $::env(FPGA_HOST)
#set fpga [string range $host 0 5]
#if {$cmd eq "Y"} {
#   /usr/bin/python3 /home/svc.fpgatest/devops/lab_loader/commonFW/ffis.py -f $fpga
#}
configure 
download
puts "Download bitfile ok..."
report clocks
#memory info
##set_period -clock usb_aclk -period 30
##set_period -clock usb_pclk -period 30
##set_period -clock pcie_pclk -period 32
##set_period -clock pcie_pclk -period 20
#source debug_info.tcl
#memory download -instance tb.top.csu_se_top.u_csu_se_s0_top.u_csu_se_s0_core.u_ahb_rom_top.u_rom_sim.rom -file ./hex/brom.hex -address 0 -count 131072
#memory download -instance ddr4_fa1_ta0_MB1_FA1 -file ./hex/bl2.hex -address 0x000000
#memory download -instance ddr4_fa1_ta0_MB1_FA1 -file ./hex/tfa.hex -address 0x010000
#memory download -instance ddr4_fa1_ta0_MB1_FA1 -file ./hex/uefi.hex -address 0x220000
#memory download -instance ddr4_fa1_ta0_MB1_FA1 -file ./hex/cix_fip.hex -address 0x180000
#memory download -instance ddr4_fa1_ta0_MB1_FA1 -file ./hex/boot.img.hex -address 0x1000000
#memory download -instance ddr4_fa1_ta0_MB1_FA1 -file ./hex/Image.hex -address  0x300000
#memory download -instance ddr4_fa1_ta0_MB1_FA1 -file ./hex/rootfs.cpio.gz.hex -address 0x510000
#
#reg force {tb.top.io_top_s0.strap0_in} 0x0
#reg force {tb.top.io_top_s0.strap1_in} 0x0
##reg force {tb.STRAP0} 0x0
##reg force {tb.STRAP1} 0x0
#puts "Initial timer0 status..."
#source time0.tcl
#puts "soc init..."
#source soc_init.tcl
#run
#reg getvalue tb.perst
#reg force {tb.perst} 0x0
#reg force {tb.perst} 0x1
