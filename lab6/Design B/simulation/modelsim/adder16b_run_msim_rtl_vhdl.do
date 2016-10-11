transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Tortoise/Documents/School/ECE 380/Lab 6/Design B/adder16b.vhd}
vcom -93 -work work {C:/Users/Tortoise/Documents/School/ECE 380/Lab 6/Design B/fulladd.vhd}

