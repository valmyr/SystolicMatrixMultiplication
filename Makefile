TB = ../tb/tb.sv
RTL = ../rtl/*.sv
dir = ./sim/

sims:
	cd ${dir} &&\
	xrun ${TB} ${RTL} &
		
sim-gui:
	cd ${dir} &&\
	xrun ${TB} ${RTL} -gui -access +rw &
rest:
	xrun .${TB} ${RTL} -access +rw -s -input restore.tcl
clean:
	cd ${dir} &&\
	rm -rf waves.shm xcelium.d xrun.* *.log .simvision

help:
	@echo "Arguments to make:"
	@echo "sim - run testbench"
	@echo "sim-gui - run testbench"
	@echo "clean - remove simulation output files"