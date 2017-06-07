transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/comnu/Documents/Q4/ArquitecturaComputadors/P3/Prac3/Components/Despl2/Despl2.vhd}

vcom -93 -work work {/home/comnu/Documents/Q4/ArquitecturaComputadors/P3/Prac3/Components/Despl2/simulation/modelsim/Despl2.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  Despl2_vhd_tst

add wave *
view structure
view signals
run -all
