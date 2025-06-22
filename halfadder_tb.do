# YOUR_CODE_FILE.do file
# exits all previous simulations in the same session
quit -sim
# compile the code file
vcom halfadder.vhd
# set the time base you want for YOUR_CODE_FILE

vsim  halfadder
# INPUTS add wave inputs:
add wave  a
add wave  b
add wave  s
add wave c


# change a from 1 to 0 after 15ns and repeat the same process every 50ns
force a 1 , 0 30 ns -repeat 50 ns

# change a from 1 to 0 after 15ns and repeat the same process every 50ns
force b 1 , 0 50 ns -repeat 100 ns

# OUTPUTS add wave Outputs:

# runs the simulation for 1000ns
run 1000 ns