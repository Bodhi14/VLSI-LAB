vlib work
vdel -all

vlib work

vlog 2_comp_struct.v
vlog 2_comp_tb.v
vlog comp_struct.v

vsim work.tb

add wave -r *
run -all