stop
memory download -instance tb.top.csu_se_top.u_csu_se_s0_top.u_csu_se_s0_core.u_ahb_rom_top.u_rom_sim.rom -file ./hex/brom.hex -address 0 -count 131072
memory download -instance ddr4_fa1_ta0_MB1_FA1 -file ./hex/bl2.hex -address 0x000000
memory download -instance ddr4_fa1_ta0_MB1_FA1 -file ./hex/tfa.hex -address 0x010000
memory download -instance ddr4_fa1_ta0_MB1_FA1 -file ./hex/uefi.hex -address 0x220000
memory download -instance ddr4_fa1_ta0_MB1_FA1 -file ./hex/cix_fip.hex -address 0x180000
memory download -instance ddr4_fa1_ta0_MB1_FA1 -file ./hex/boot.img.hex -address 0x1000000
memory download -instance ddr4_fa1_ta0_MB1_FA1 -file ./hex/Image.hex -address  0x300000
memory download -instance ddr4_fa1_ta0_MB1_FA1 -file ./hex/rootfs.cpio.gz.hex -address 0x510000

source time0.tcl
source soc_init.tcl
#reg force {tb.top.csu_se_top.csu_se_nsysreset} 0
#run 50000 ns
#reg force {tb.top.csu_se_top.csu_se_nsysreset} 1

run
