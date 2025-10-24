
# XM-Sim Command File
# TOOL:	xmsim(64)	23.09-s003
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
alias . run
alias indago verisium
alias quit exit
database -open -shm -into waves.shm waves -default
probe -create -database waves tb.aa_shiftM.A26 tb.aa_shiftM.Min tb.aa_shiftM.Mout tb.aa_shiftM.UnpackVec tb.aa_shiftM.UnpackVec2 tb.aa_shiftM.UnpackVecMout tb.aa_shiftM.UnpackVecMout2 tb.aa_shiftM.clock tb.aa_shiftM.current_counter tb.aa_shiftM.ena tb.aa_shiftM.ena_int tb.aa_shiftM.next_counter tb.aa_shiftM.nreset tb.aa_shiftM.ready tb.aa_shiftM.shiftMatrixOut tb.aa_shiftM.shiftVec tb.aa_shiftM.shiftVec2
probe -create -database waves tb.DUT_MatrixMultiplyM0.a_input tb.DUT_MatrixMultiplyM0.a_load tb.DUT_MatrixMultiplyM0.a_vec tb.DUT_MatrixMultiplyM0.b_input tb.DUT_MatrixMultiplyM0.b_load tb.DUT_MatrixMultiplyM0.b_vec tb.DUT_MatrixMultiplyM0.clock tb.DUT_MatrixMultiplyM0.counter_concat tb.DUT_MatrixMultiplyM0.counter_mult tb.DUT_MatrixMultiplyM0.currentStateSystolicControlUnit tb.DUT_MatrixMultiplyM0.ena_cells tb.DUT_MatrixMultiplyM0.nextStateSystolicControlUnit tb.DUT_MatrixMultiplyM0.next_counter_concat tb.DUT_MatrixMultiplyM0.next_counter_mult tb.DUT_MatrixMultiplyM0.next_ena_cells tb.DUT_MatrixMultiplyM0.next_valid tb.DUT_MatrixMultiplyM0.nreset tb.DUT_MatrixMultiplyM0.output_produc_a_b tb.DUT_MatrixMultiplyM0.produc_a_b tb.DUT_MatrixMultiplyM0.ready_o tb.DUT_MatrixMultiplyM0.valid tb.DUT_MatrixMultiplyM0.valid_i

simvision -input /home/valmir.silva/Desktop/validacao/analise/SystolicMatrixMultiplication/sim/.simvision/3462936_valmir.silva__autosave.tcl.svcf
