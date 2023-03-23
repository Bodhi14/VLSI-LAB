vlib work

vlog D_FF.v
vlog D_FF_tb.v

vsim work.tb
add wave -r *
run -all
