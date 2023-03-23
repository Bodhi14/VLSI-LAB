vlib work

vlog HA.v
vlog FA.v
vlog 4input_FA.v
vlog 4input_FA_tb.v

vsim work.tb

add wave -r *
run -all