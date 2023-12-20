set  RED_HOME $env(RED_HOME)
set  FPGA_TOP_NAME $env(FPGA_TOP_NAME)
add_veloce_settings ./red.veloce.config
set_top_module work.${FPGA_TOP_NAME}
set_optimization_mode performance
#down error message
set_message_severity suppress -ids condition-31031
#no clocks
set_message_severity suppress -ids qualify-31113

source filling_rate.tcl
disable_autoconnect
set_task_verbosity 2 -tasks [get_tasks]
set_phd_file ./hardware.phd
source ./condition_settings.tcl
configure_tasks route -constraints_file ./route.tcl
source ./wrap_settings.tcl
set_rdc_file ./tb.rdc
add_debug_file proble.tcl
add_force_file force.tcl
enable_probeless_debug
enable_reconstruction
enable_path_browser
enable_multidriver_resolution
#redcomp -distributed
#creat_distrib_tags red -lsf_queue dv_test -distrib_flow lsf -lsf_options {"-P fpga"} -mem_req 64G
#create_distrib_tags -distrib_flow machlist -mf machine.list
#configure_tasks spnr -distrib_tag spnr_tags
#create_distrib_tags red 
#configure_tasks wrap.debug -distrib_tag red	
#configure_tasks wrap.analyze -distrib_tag red	
#configure_tasks wavegencompile -rtl_partitions_distrib_tag red	
#configure_tasks visualizer -distrib_tag red
#tbuild
#configure_tasks spnr -distrib_tag red
#
#split
#route
#checkrdc
#condition.optimize
#qualify
#wrap
#rtlc
#part
#wrap.generate
#wrap.annotate
#condition.parse
#redcondb
#edit
#lint
#condition
#pbannotate
create_pinmux_config -name RED_DAF_config -type RED_DAF8M -data_rate 1200
assign_pinmux_config -name RED_DAF_config
create_spnr_tags tag_spnr_all -strategy_profile ${RED_HOME}/partitioner/systems/fpga/xilinx/common/redfpga/strategies_all__start_now.tcl -pnr_settings ./pnr_setting.tcl
create_spnr_tags tag_spnr_bundle6 -strategy_profile ${RED_HOME}/partitioner/systems/fpga/xilinx/common/redfpga/strategies_bundle6__start_now.tcl -pnr_settings ./pnr_setting.tcl

#configure_fpgas [get_fpgas MB1_FA1] -spnr_tags tag_spnr_bundle6
#configure_fpgas [get_fpgas MB1_FA2] -spnr_tags tag_spnr_bundle6
#configure_fpgas [get_fpgas MB1_FB1] -spnr_tags tag_spnr_bundle6
#configure_fpgas [get_fpgas MB1_FB2] -spnr_tags tag_spnr_bundle6

#configure_fpgas [get_fpgas MB1_FA1] -spnr_tags tag_spnr_bundle6
#configure_fpgas [get_fpgas MB1_FA2] -spnr_tags tag_spnr_bundle6
#configure_fpgas [get_fpgas MB1_FB1] -spnr_tags tag_spnr_bundle6
#configure_fpgas [get_fpgas MB1_FB2] -spnr_tags tag_spnr_bundle6
congestion_reporting




