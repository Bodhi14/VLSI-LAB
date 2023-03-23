vlib work

vlog T_FF.v
vlog T_FF_tb.v

vsim work.tb
add wave -r *
run -all