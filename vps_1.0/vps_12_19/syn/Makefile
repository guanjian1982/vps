#-----------------------------------------------------------
#-- Automatically generated by Reddiag --
#-- Veloce Prototyping System version: 2022.12
#-- Veloce Prototyping System build: 5461546
#-- Time: Thu Dec  7 19:42:13 2023
#-----------------------------------------------------------


export RUNTIME_TEST_WAIT_TIME?=1 #1 seconds
RUNTIME_TESTS_DIR?=
export RTL_DIR:=./
export FPGA_SCRIPT_PATH:=.
export FPGA_TOP_NAME=tb
REDRUN_CLI?=
FILELISTS:= ${RTL_DIR}/filelist.f
CONFIG=red.config
START_TASK:=rtlc
END_TASK:=wrap

.PHONY:run

export VERDI_ARGS="-P ${VERDI_HOME}/share/PLI/VCS/LINUX64/novas.tab ${VERDI_HOME}/share/PLI/VCS/LINUX64/pli.a"
sim: clean_sim comv elab sim

com_v:
	vlogan -sverilog -full64 -f ./filelist.f glbl.v \
	-Mupdate=1 \
	-incr_vlogan \
	-timescale =1ns/1ps \	
	-define+FPGA \
	-L ana_v.log -kdb -lca
com_vhd:
	vhdlan -full64 -l ana_vhd.log
elab:
	vcs -top tb -top glbl +vcs+initreg+random \
	-Mudate=1 \
	-timescale=1ns /1ps \
	-full64 \
	${VERDI_ARGS}	\
	-l elaborate.log
sim:
	./simv +vcs+initreg+0 -l simulation.log

clean_sim:
	rm -rf simv.daidir
	rm -rf work.lib++
	rm -rf AN.DB
	rm -rf *.log	


all : clean compile back_end_spnr 

compile: rtl_lib rtl_analyze to_rtlc to_visualizer to_condition to_recondb to_pbannotate to_qualify to_part to_split to_tbuild to_route to_edit to_wrap

compile_rdc: chk_rdc to_visualizer to_condition to_recondb to_pbannotate to_qualify to_part to_split to_tbuild to_route to_edit to_wrap


rtl_lib:
	redlib work
	redmap work work

rtl_analyze:
	redanalyze -sv -mfcu -work work  -f $(FILELISTS) +define+FPGA_MIG+define_FPGA 

gen_rdc:
	redcomp -task rdc -setting ${FPGA_SCRIPT_PATH}/redcomp.tcl

chk_rdc:
	redcomp -task checrdc -setting ${FPGA_SCRIPT_PATH}/redcomp.tcl

show_rdc:
	redrdc redcomp.out/rdc/ouptputs/rdc_rtlc.tcl

rtl2netlist:
	make gen_rdc -setting ${FPGA_SCRIPT_PATH}/redcomp.tcl
	redrtldb redcomp.out/rdc/output/rdc_condition.tcl -setting ${FPGA_SCRIPT_PATH}/redcomp.tcl

view:
	redcomp -task view.post_rtlc -setting ${FPGA_SCRIPT_PATH}/redcomp.tcl

split_view:
	redcomp -task view.post_split

to_rtlc:
	redcomp -task rtlc -setting ${FPGA_SCRIPT_PATH}/redcomp.tcl

to_pbannotate:
	redcomp -task pbannotate -setting ${FPGA_SCRIPT_PATH}/redcomp.tcl

to_visualizer:
	redcomp -task visualizer -setting ${FPGA_SCRIPT_PATH}/redcomp.tcl

open_vis:
	vis -red &

to_recondb:
	redcomp -task recondb -setting ${FPGA_SCRIPT_PATH}/redcomp.tcl

to_condition:
	redcomp -task condition -setting ${FPGA_SCRIPT_PATH}/redcomp.tcl

to_condition_opt:
	redcomp -task condition.optimize -setting ${FPGA_SCRIPT_PATH}/redcomp.tcl

to_condition_par:
	redcomp -task condition.parse -setting ${FPGA_SCRIPT_PATH}/redcomp.tcl

to_qualify:
	redcomp -task qualify -setting ${FPGA_SCRIPT_PATH}/redcomp.tcl

to_part:
	redcomp -task part -setting ${FPGA_SCRIPT_PATH}/redcomp.tcl

to_split:
	redcomp -task split -setting ${FPGA_SCRIPT_PATH}/redcomp.tcl

to_tbuild:
	redcomp -task tbuild -setting ${FPGA_SCRIPT_PATH}/redcomp.tcl

to_route:
	redcomp -task route -setting ${FPGA_SCRIPT_PATH}/redcomp.tcl

to_edit:
	redcomp -task edit -setting ${FPGA_SCRIPT_PATH}/redcomp.tcl

to_wrap:
	redcomp -task wrap -setting ${FPGA_SCRIPT_PATH}/redcomp.tcl

back_end_spnr:
	redcomp -task spnr -setting ${FPGA_SCRIPT_PATH}/redcomp.tcl

spnr_fa1:
	redcomp -task spnr -setting ${FPGA_SCRIPT_PATH}/redcomp.tcl -fpga MB1_FA1

spnr_fa2:
	redcomp -task spnr -setting ${FPGA_SCRIPT_PATH}/redcomp.tcl -fpga MB1_FA2

spnr_fb1:
	redcomp -task spnr -setting ${FPGA_SCRIPT_PATH}/redcomp.tcl -fpga MB1_Fb1

spnr_fb2:
	redcomp -task spnr -setting ${FPGA_SCRIPT_PATH}/redcomp.tcl -fpga MB1_Fb2

gen_phd:
	rm -rf boardgen
	redboardgen -target profpga -cfg IP_169.254.0.2.cfg

pack:
	redcomp -package outputs

update:
	redcomp -update_outputs


frontend:
	redcomp -start_task $(START_TASK) -end_task $(END_TASK) -config $(CONFIG)

clean:
	\rm -rf redcomp.out redrt.out rtl_work velrunopts.ini veloce.map veloce.config  veloce.log  veloce.med _red_veloce.config _red_veloce.log _red_veloce.med work

backend:
	redcomp -task spnr -config $(CONFIG)

run: run_track_integrity
run_track_integrity:
	redrun -source "redrun.tcl" $(REDRUN_CLI)

redrun_patch:
	cp -f redcomp.out/outputs/*.cfg  redcomp.out/outputs/redcomp.out/outputs/*.cfg.back
	cp -f redrun_cfg/IP_169.254.0.2.red22.cfg  redcomp.out/outputs/
	cp -f redrun_cfg/*.txt redcomp.out/outputs/
		
########################
##generate dbst database to out folder
dbst:
	profpga_brdgen IP_169.254.0.2.cfg --dbst
##
dbstbit:
	cd out
	./synth_sequential.sh
#check result
dbstcheck:
	profpga_selftest2 profpga.cfg -r signal_routing.dat
	
