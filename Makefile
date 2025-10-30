TB = ../tb/tb.sv
RTL = ../rtl/*.sv
dir = ./sim/


simi:
	cd ${dir} &&\
	source /usr/local/cadence/cds.sh &&\
	xrun ${TB} ${RTL} -mce_sim_thread_count 32 -mce_build_thread_count 32 -access +rw &
#	xrun ${TB} ${RTL} -mce -mce_build_cpu_configuration single-socket -mce_build_thread_count 32 -access +rw &
isim:
	source /usr/local/cadence/cds.sh &&\
	cd ${dir} &&\
	xrun ${TB} ${RTL} -access +rw -gui &
waves: 
	cd ${dir} &&\
	source /usr/local/cadence/cds.sh &&\
	simvision -waves waves.shm &
	
clean:
	cd ${dir} &&\
	rm -rf waves.shm xcelium.d xrun.* *.log .simvision *
simplify:
	cd ${dir} &&\
	source /usr/local/cadence/cds.sh &&\
    xrun ../tb/tb.sv ../rtl/ShiftMatrix.sv ../rtl/accumulator.sv ../rtl/systolicMatrixMultiply.sv -access +rw -s -input restore.tcl &

help:
	@echo "Arguments to make:"
	@echo "sim - run testbench"
	@echo "sim-gui - run testbench"
	@echo "clean - remove simulation output files"