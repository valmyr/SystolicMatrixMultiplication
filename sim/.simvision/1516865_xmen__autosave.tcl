
# XM-Sim Command File
# TOOL:	xmsim(64)	24.03-s005
#

set tcl_prompt1 {puts -nonewline "xcelium> "}
set tcl_prompt2 {puts -nonewline "> "}
set vlog_format %h
set vhdl_format %v
set real_precision 6
set display_unit auto
set time_unit module
set heap_garbage_size -200
set heap_garbage_time 0
set assert_report_level note
set assert_stop_level error
set autoscope yes
set assert_1164_warnings yes
set pack_assert_off {}
set severity_pack_assert_off {note warning}
set assert_output_stop_level failed
set tcl_debug_level 0
set relax_path_name 1
set vhdl_vcdmap XX01ZX01X
set intovf_severity_level ERROR
set probe_screen_format 0
set rangecnst_severity_level ERROR
set textio_severity_level ERROR
set vital_timing_checks_on 1
set vlog_code_show_force 0
set assert_count_attempts 1
set tcl_all64 false
set tcl_runerror_exit false
set assert_report_incompletes 0
set show_force 1
set force_reset_by_reinvoke 0
set tcl_relaxed_literal 0
set probe_exclude_patterns {}
set probe_packed_limit 4k
set probe_unpacked_limit 16k
set assert_internal_msg no
set svseed 1
set assert_reporting_mode 0
set vcd_compact_mode 0
set vhdl_forgen_loopindex_enum_pos 0
set xmreplay_dc_debug 0
set tcl_runcmd_interrupt next_command
set tcl_sigval_prefix {#}
alias . run
alias indago verisium
alias quit exit
database -open -shm -into waves.shm waves -default
probe -create -database waves tb.DUT_MatrixMultiplyM0.a tb.DUT_MatrixMultiplyM0.a_input tb.DUT_MatrixMultiplyM0.a_load tb.DUT_MatrixMultiplyM0.a_load_next tb.DUT_MatrixMultiplyM0.b tb.DUT_MatrixMultiplyM0.b_input tb.DUT_MatrixMultiplyM0.b_input_transpost tb.DUT_MatrixMultiplyM0.b_load tb.DUT_MatrixMultiplyM0.b_load_next tb.DUT_MatrixMultiplyM0.clock tb.DUT_MatrixMultiplyM0.counter tb.DUT_MatrixMultiplyM0.currentStateSystolicControlUnit tb.DUT_MatrixMultiplyM0.ena_cells tb.DUT_MatrixMultiplyM0.ena_load tb.DUT_MatrixMultiplyM0.ena_shift tb.DUT_MatrixMultiplyM0.nextStateSystolicControlUnit tb.DUT_MatrixMultiplyM0.next_counter tb.DUT_MatrixMultiplyM0.next_ena_cells tb.DUT_MatrixMultiplyM0.next_ena_load tb.DUT_MatrixMultiplyM0.next_ena_shift tb.DUT_MatrixMultiplyM0.next_valid tb.DUT_MatrixMultiplyM0.nreset tb.DUT_MatrixMultiplyM0.output_produc_a_b tb.DUT_MatrixMultiplyM0.produc_a_b tb.DUT_MatrixMultiplyM0.ready_o tb.DUT_MatrixMultiplyM0.valid tb.DUT_MatrixMultiplyM0.valid_i

simvision -input /home/xmen/Desktop/SystolicMatrixMultiplication/sim/.simvision/1516865_xmen__autosave.tcl.svcf
