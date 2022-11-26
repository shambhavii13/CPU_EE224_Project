transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/91937/OneDrive/Desktop/IITB/224_project/sign_extender9/DUT.vhdl}
vcom -93 -work work {C:/Users/91937/OneDrive/Desktop/IITB/224_project/sign_extender9/sign_ext_9.vhd}

vcom -93 -work work {C:/Users/91937/OneDrive/Desktop/IITB/224_project/sign_extender9/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all