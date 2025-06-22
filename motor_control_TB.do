vcom motor_control.vhd

qu?t -s?m

vsim -t us motor_control

add wave enable
add wave clk
add wave reset
add wave start
add wave stop


add wave motor


force clk 0,1 100 ns -repeat 200 ns
force enable 1,0 500 ns 
force reset 0,1 200 ns
force start 0,1 70 ns
