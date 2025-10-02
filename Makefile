TB = ../tb/tb.sv
RTL = ../rtl/*.sv
dir = ./sim/

simi:
	cd ${dir} &&\
	xrun ${TB} ${RTL} -mce_sim_thread_count 32 -mce_build_thread_count 32 -access +rw &
#	xrun ${TB} ${RTL} -mce -mce_build_cpu_configuration single-socket -mce_build_thread_count 32 -access +rw &
isim:
	cd ${dir} &&\
	xrun ${TB} ${RTL} -access +rw -gui &
waves: 
	cd ${dir} &&\
	simvision -waves waves.shm &
	
clean:
	cd ${dir} &&\
	rm -rf waves.shm xcelium.d xrun.* *.log .simvision *
simplify:
	cd ${dir} &&\
	xrun   ../rtl/accumulator.sv ../rtl/systolicMatrixMultiply.sv -access +rw +gui &

help:
	@echo "Arguments to make:"
	@echo "sim - run testbench"
	@echo "sim-gui - run testbench"
	@echo "clean - remove simulation output files"