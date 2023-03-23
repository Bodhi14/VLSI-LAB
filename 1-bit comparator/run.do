vlib work
vdel -all

vlib work

vlog comp_struct.v
vlog comp_tb.v

vsim work.tb

add wave -r *
run -all