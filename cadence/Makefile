TB = ../tb/tb.sv
RTL = ../rtl/*.sv
dir = ./sim/


simi:
	cd ${dir} &&\
	xrun -timescale 1ns/1ps -F ../../rtl.lst -top tb_cadence -access +rwc 
simi_gui:
	cd ${dir} &&\
	xrun -timescale 1ns/1ps -F ../../rtl.lst -top tb_cadence -access +rwc -gui
clean:
	cd ${dir} &&\
	rm -rf waves.shm xcelium.d xrun.* *.log .simvision * .*

help:
	@echo "Arguments to make:"
	@echo "sim - run testbench"
	@echo "sim-gui - run testbench"
	@echo "clean - remove simulation output files"