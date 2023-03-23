vlib work
vdel -all

vlib work

vlog mux2_struct.v
vlog mux2_tb.v

vsim work.tb

add wave -r *
run -all