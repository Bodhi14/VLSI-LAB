vlib work
vdel -all

vlib work

vlog FA.v
vlog Ripple_Carry_Adder.v
vlog Ripple_Carry_Adder_tb.v

vsim work.tb

add wave -r *
run -all