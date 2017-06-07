transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/comnu/Documents/Q4/ArquitecturaComputadors/P2/Descodificador5.vhd}
vcom -93 -work work {/home/comnu/Documents/Q4/ArquitecturaComputadors/P2/Registre.vhd}
vcom -93 -work work {/home/comnu/Documents/Q4/ArquitecturaComputadors/P2/RegistreZero.vhd}
vcom -93 -work work {/home/comnu/Documents/Q4/ArquitecturaComputadors/P2/RegSortida3Estats.vhd}
vcom -93 -work work {/home/comnu/Documents/Q4/ArquitecturaComputadors/P2/BancRegistres.vhd}

vcom -93 -work work {/home/comnu/Documents/Q4/ArquitecturaComputadors/P2/components/BancRegistres/simulation/modelsim/BancRegistres.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  BancRegistres_vhd_tst

add wave *
view structure
view signals
run -all
