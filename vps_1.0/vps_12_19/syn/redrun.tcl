#-----------------------------------------------------------
#-- Automatically generated by Reddiag --
#-- Veloce Prototyping System version: 2022.12
#-- Veloce Prototyping System build: 5461546
#-- Time: Thu Dec  7 19:42:13 2023
#-----------------------------------------------------------


onerror {continue}

#######################################################
suppress -id 24242
if {[info exists env(RED_HOME)]} {
	set python_bin $env(RED_HOME)/debug/runtime/x86_64/bin/python
} else {
	set python_bin /usr/bin/python2.7
}

# Runtime directory configuration
set out_dir [get_out_dir]
set compile_dir [get_compile_dir]
set out_dir_name [file tail $out_dir]
if {$out_dir_name == "redrt.out"} {
    set runtime_reports_dir "runtime_reports"
} else {
    set runtime_reports_dir "${out_dir_name}.runtime_reports"
}

if {[info exists env(RUNTIME_TESTS_DIR)]} {
	set runtime_tests_dir $env(RUNTIME_TESTS_DIR)
} else {
	set runtime_tests_dir ../runtime_tests
}

set track_nets_file  $runtime_tests_dir/track_nets.json
source $runtime_tests_dir/runtime_test.tcl

puts "__OUT_DIR__ = $out_dir"
puts "__COMPILE_DIR__ = $compile_dir"

if {[info exists env(RUNTIME_TEST_WAIT_TIME)]} {
	set WAIT_TIME $env(RUNTIME_TEST_WAIT_TIME)
} else {
	set WAIT_TIME 1
	puts "Environment variable RUNTIME_TEST_WAIT_TIME was not set. WAIT_TIME = $WAIT_TIME seconds"
}
#######################################################

configure
download -startclocks
puts "__PMUX_SECTION_START__"
pinmux info -flags { TRACK_NAME }
puts "__PMUX_SECTION_END__\n\n"
#using force file
reset -assert RESET
reset -assert INTRA_RESET
after 1000
reset -deassert RESET
reset -deassert INTRA_RESET

wait $WAIT_TIME

puts "__GVALUE_SECTION_START__"
puts "TOP.COMPARE_OK_MB1_FA1           = [reg getvalue TOP.COMPARE_OK_MB1_FA1]"
puts "TOP.COMPARE_OK_MB1_FA2           = [reg getvalue TOP.COMPARE_OK_MB1_FA2]"
puts "TOP.COMPARE_OK_MB1_FB1           = [reg getvalue TOP.COMPARE_OK_MB1_FB1]"
puts "TOP.COMPARE_OK_MB1_FB2           = [reg getvalue TOP.COMPARE_OK_MB1_FB2]"
puts "TOP.COMPARE_OK_N_MB1_FA1         = [reg getvalue TOP.COMPARE_OK_N_MB1_FA1]"
puts "TOP.COMPARE_OK_N_MB1_FA2         = [reg getvalue TOP.COMPARE_OK_N_MB1_FA2]"
puts "TOP.COMPARE_OK_N_MB1_FB1         = [reg getvalue TOP.COMPARE_OK_N_MB1_FB1]"
puts "TOP.COMPARE_OK_N_MB1_FB2         = [reg getvalue TOP.COMPARE_OK_N_MB1_FB2]"
puts "TOP.TESTING_MB1_FA1              = [reg getvalue TOP.TESTING_MB1_FA1]"
puts "TOP.TESTING_MB1_FA2              = [reg getvalue TOP.TESTING_MB1_FA2]"
puts "TOP.TESTING_MB1_FB1              = [reg getvalue TOP.TESTING_MB1_FB1]"
puts "TOP.TESTING_MB1_FB2              = [reg getvalue TOP.TESTING_MB1_FB2]"
puts "TOP.TESTING_N_MB1_FA1            = [reg getvalue TOP.TESTING_N_MB1_FA1]"
puts "TOP.TESTING_N_MB1_FA2            = [reg getvalue TOP.TESTING_N_MB1_FA2]"
puts "TOP.TESTING_N_MB1_FB1            = [reg getvalue TOP.TESTING_N_MB1_FB1]"
puts "TOP.TESTING_N_MB1_FB2            = [reg getvalue TOP.TESTING_N_MB1_FB2]"
puts "TOP.fpga_out_MB1_FA1.COMPARE_OK_IN\[350:0\]     = [reg getvalue TOP.fpga_out_MB1_FA1.COMPARE_OK_IN]"
puts "TOP.fpga_out_MB1_FA2.COMPARE_OK_IN\[467:0\]     = [reg getvalue TOP.fpga_out_MB1_FA2.COMPARE_OK_IN]"
puts "TOP.fpga_out_MB1_FB1.COMPARE_OK_IN\[428:0\]     = [reg getvalue TOP.fpga_out_MB1_FB1.COMPARE_OK_IN]"
puts "TOP.fpga_out_MB1_FB2.COMPARE_OK_IN\[389:0\]     = [reg getvalue TOP.fpga_out_MB1_FB2.COMPARE_OK_IN]"
puts "__GVALUE_SECTION_END__\n\n"

disconnect -v

exec $python_bin ./runtime_test.py -l $out_dir -t $track_nets_file -from \* -to \*
puts "Successfully generated track reports under ./${runtime_reports_dir}/track_status"
exit
