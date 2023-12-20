###############DEBUG INFO REGISTER DEFINE 
################################################
set SE_TYPE AP_SE
set PLATFORM FPGA
#KHZ
set PCR_FREQ 4000
#
set CLUSTER 2
set GPU 0
set DDR_MODEL 1
set DDR_CHANNEL 0
set DPU 0
set DP 0
set NPU 0
set CSI 0
set PCIE 1
set USB 1
set GMAC 0
set VPU 0
set ISP 0
set MMHUB 0
set SYSHUB 1
set PCIEHUB 1
set SENSORFUS 1
set AUDIO 0
set FCH 1
set FUSE 0

#SE Postcode register  SEPCR
set SE_PC 0
#SE STAR UART FREQ SESUCR
set SE_GCLK_FREQ 4000

#RTL CL register RTLCL
set RTL_CL 38032

###############################################

#Platform control register: PCR
#tb.top.csu_se_top.u_csu_se_s0_top.u_csu_se_s0_core.csu_se_pub_apb_reg.csu_se_pub_reserve0
#IP RTL View Register:IRVR
#tb.top.csu_se_top.u_csu_se_s0_top.u_csu_se_s0_core.csu_se_pub_apb_reg.csu_se_pub_reserve1
#SE Postcode register  SEPCR
#tb.top.csu_se_top.u_csu_se_s0_top.u_csu_se_s0_core.csu_se_pub_apb_reg.csu_se_pub_reserve2
#SE Star/UART register SESUCR
#tb.top.csu_se_top.u_csu_se_s0_top.u_csu_se_s0_core.csu_se_pub_apb_reg.csu_se_pub_reserve3

#Se type: [19]
#0: ap+se
#1: se only
###############################################
#set SE_TYPE AP_SE
###############################################
if {$SE_TYPE eq "AP_SE"} {
  set SE_TP 0
}
if {$SE_TYPE eq "SE_ONLY"} {
  set SE_TP 1
}
puts "SE_TP is: 'b$SE_TP"
#Reserved: [31:20]
set PCR_RESERV0 0
#Platform ID: [18:17]
#0: Simulation  SIM
#1: Emulator Virutal EMUV
#2: Emulator ICE  EMUI
#3: FPGA
###############################################
#set PLATFORM FPGA
###############################################
if {$PLATFORM eq "FPGA"} {
  set PCR_ID 11
}
if {$PLATFORM eq "SIM"} {
  set PCR_ID 00
}
if {$PLATFORM eq "EMUV"} {
  set PCR_ID 01
}
if {$PLATFORM eq "EMUI"} {
  set PCR_ID 10
}
puts "PCR_ID is: 'b$PCR_ID"
#FREQ:[16:0]
###############################################
#set PCR_FREQ 5
###############################################
proc dec2bin {dec change bits} {
set bin 0
set a 1
set i 0
while {$a>0} {
  set a [expr $dec/$change]
  set b [expr $dec%$change]
  set dec $a
  if {$i eq 0} {
    set bin $b
  } else {
    set bin $b$bin
  }
  incr i
 }
 set len [string length $bin]
 for {set j 1} {$j <= [expr $bits - $len]} {incr j} {
    set bin 0$bin
 }
 return $bin
}
puts "PCR_FREQ is: 'b[dec2bin $PCR_FREQ 2 17]"
set PCR 0b$SE_TP$PCR_ID[dec2bin $PCR_FREQ 2 17] 
puts "PCR Value is: $PCR"


#CLUSTER [30:28]
#0: Shell,
#1: Hunter0 only
#2: Hayes0 only
#3: Hunter0+Hayes0
#4: Hayes4
#5: 12 Core
###############################################
#set CLUSTER 2
###############################################
puts "CLUSTER setting is: 3'b[dec2bin $CLUSTER 2 3]"
#GPU [27:26]
#0: Shell
#1: 1 core,
#2: 2 core,
#3: 10 core
###############################################
#set GPU 1
###############################################
puts "GPU CORES setting is: 2'b[dec2bin $GPU 2 2]"
#DDR MODEL [25] 0: ddr controler, 1: ddr axi model 
################################################
#set DDR_MODEL 1
###############################################
puts "DDR MODEL setting is: 1'b[dec2bin $DDR_MODEL 2 1]"

#DDR [24] 0: 4 Channels, 1: 1 channel
###############################################
#set DDR_CHANNEL 1
###############################################
puts "DDR CHANNEL setting is: 1'b[dec2bin $DDR_CHANNEL 2 1]"

#DPU [23:22]
#0: Shell
#1: 1DPU
#2: 2DPU
#3: 5DPU
###############################################
#set DPU 1
###############################################
puts "DPU NUM setting is: 2'b[dec2bin $DPU 2 2]"
#DP [21:20]
#0: Shell
#1: 1DP
#2: 2DP
#3: 5DP
###############################################
#set DP 1
###############################################
puts "DP NUM setting is: 2'b[dec2bin $DP 2 2]"
#[19:18]        NPU
#0: Shell
#1: 1core
#2: 3core
###############################################
#set NPU 1
###############################################
puts "NPU CORES setting is: 2'b[dec2bin $NPU 2 2]"
#[17:16]        CSI
#0: Shell
#1: 1CSI
#2: 2CSI
#3: 4CSI
###############################################
#set CSI 1
###############################################
puts "CSI CORES setting is: 2'b[dec2bin $CSI 2 2]"
#[15:13]        PCIE
#0: Shell
#1: x8 (Default)
#2: x4
#3: x2
#4: x1
#5: x8+x2 (Virtual)
###############################################
#set PCIE 2
###############################################
puts "PCIE setting is: 3'b[dec2bin $PCIE 2 3]"
#[12:11]        USB
#0: Shell,
#1: USB-C_0, (FPGA, ICE)
#2: USB-C_0,USB-C_1, USB3_1, USB2_0 (Virtual) 
################################################
#set USB 1
###############################################
puts "USB setting is: 2'b[dec2bin $USB 2 2]"
#[10:9] GMAC
#0: Shell
#1: 1 GMC
#2: 2 GMC
###############################################
#set GMAC 1
###############################################
puts "GMAC setting is: 2'b[dec2bin $GMAC 2 2]"
#[8]    VPU     0: Shell, 1: RTL
###############################################
puts "VPU setting is: 1'b[dec2bin $VPU 2 1]"
###############################################
#[7]    ISP     0: Shell, 1: RTL
###############################################
puts "ISP setting is: 1'b[dec2bin $ISP 2 1]"
###############################################
#[6]    MMHUB   0: Shell, 1: RTL
###############################################
puts "MMHUB setting is: 1'b[dec2bin $MMHUB 2 1]"
###############################################
#[5]    SYSHUB  0: Shell, 1: RTL
###############################################
puts "SYSHUB setting is: 1'b[dec2bin $SYSHUB 2 1]"
###############################################
#[4]    PCIEHUB 0: Shell, 1: RTL
###############################################
puts "PCIEHUB setting is: 1'b[dec2bin $PCIEHUB 2 1]"
###############################################
#[3]    SensorFusion    0: Shell, 1: RTL
###############################################
puts "SENSORFUS setting is: 1'b[dec2bin $SENSORFUS 2 1]"
###############################################
#[2]    Audio   0: Shell, 1: RTL
###############################################
puts "AUDIO setting is: 1'b[dec2bin $AUDIO 2 1]"
###############################################
#[1]    FCH     0: Shell, 1: RTL
###############################################
puts "FCH setting is: 1'b[dec2bin $FCH 2 1]"
###############################################
#[0] Fuse       0: Shell, 1: RTL
###############################################
puts "FUSE setting is: 1'b[dec2bin $FUSE 2 1]"
###############################################


###############################################
puts "SE_PC is: 'b[dec2bin $SE_PC 2 16]"
set SEPCR 0b[dec2bin $SE_PC 2 16] 
puts "SEPCR Value is: $SEPCR"
###############################################


###############################################
puts "SE_GCLK_FREQ is: 'b[dec2bin $SE_GCLK_FREQ 2 32]"
set SESUCR 0b[dec2bin $SE_GCLK_FREQ 2 32]
puts "SESUCR Value is: $SESUCR"
###############################################



###############################################
puts "RTL cl is: 'b[dec2bin $RTL_CL 2 32]"
set RTLCL 0b[dec2bin $RTL_CL 2 32]
puts "RTLCL Value is: $RTLCL"
###############################################

#
set IRVR 0b0[dec2bin $CLUSTER 2 3][dec2bin $GPU 2 2][dec2bin $DDR_MODEL 2 1][dec2bin $DDR_CHANNEL 2 1][dec2bin $DPU 2 2][dec2bin $DP 2 2][dec2bin $NPU 2 2][dec2bin $CSI 2 2][dec2bin $PCIE 2 3][dec2bin $USB 2 2][dec2bin $GMAC 2 2][dec2bin $VPU 2 1][dec2bin $ISP 2 1][dec2bin $MMHUB 2 1][dec2bin $SYSHUB 2 1][dec2bin $PCIEHUB 2 1][dec2bin $SENSORFUS 2 1][dec2bin $AUDIO 2 1][dec2bin $FCH 2 1][dec2bin $FUSE 2 1] 
puts "IRVR value is: $IRVR"

reg force    {tb.top.csu_se_top.u_csu_se_s0_top.u_csu_se_s0_core.u_csu_se_pub_apb_reg.csu_se_pub_reserve0}      $PCR
set val [reg getvalue    {tb.top.csu_se_top.u_csu_se_s0_top.u_csu_se_s0_core.u_csu_se_pub_apb_reg.csu_se_pub_reserve0}]
puts "Setting PCR value to: $val"
reg force    {tb.top.csu_se_top.u_csu_se_s0_top.u_csu_se_s0_core.u_csu_se_pub_apb_reg.csu_se_pub_reserve1}  $IRVR
set val [reg getvalue    {tb.top.csu_se_top.u_csu_se_s0_top.u_csu_se_s0_core.u_csu_se_pub_apb_reg.csu_se_pub_reserve1}]
puts "Setting IRVR value to: $val"

reg force    {tb.top.csu_se_top.u_csu_se_s0_top.u_csu_se_s0_core.u_csu_se_pub_apb_reg.csu_se_pub_reserve2}  $SEPCR
set val [reg getvalue    {tb.top.csu_se_top.u_csu_se_s0_top.u_csu_se_s0_core.u_csu_se_pub_apb_reg.csu_se_pub_reserve2}]
puts "Setting SEPCR value to: $val"
reg force    {tb.top.csu_se_top.u_csu_se_s0_top.u_csu_se_s0_core.u_csu_se_pub_apb_reg.csu_se_pub_reserve3}  $SESUCR
set val [reg getvalue    {tb.top.csu_se_top.u_csu_se_s0_top.u_csu_se_s0_core.u_csu_se_pub_apb_reg.csu_se_pub_reserve3}]
puts "Setting SESUCR value to: $val"
reg force    {tb.top.csu_se_top.u_csu_se_s0_top.u_csu_se_s0_core.u_csu_se_pub_apb_reg.csu_se_pub_reserve5}  $RTLCL
set val [reg getvalue    {tb.top.csu_se_top.u_csu_se_s0_top.u_csu_se_s0_core.u_csu_se_pub_apb_reg.csu_se_pub_reserve5}]
puts "Setting RTLCL value to: $val"
