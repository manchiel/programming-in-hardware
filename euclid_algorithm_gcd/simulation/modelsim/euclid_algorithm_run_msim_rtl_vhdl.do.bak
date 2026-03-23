transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/druga god ftn/nadogradnja/programming_in_hardware/euclid_algorithm_gcd/euclid_algorithm.vhd}

vcom -93 -work work {D:/druga god ftn/nadogradnja/programming_in_hardware/euclid_algorithm_gcd/euclid_algorithm_test_bench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  euclid_algorithm_test_bench.vhd

add wave *
view structure
view signals
run -all
