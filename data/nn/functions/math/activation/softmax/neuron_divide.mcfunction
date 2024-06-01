# Store index of current neuron whose value is being divided
execute store result storage nn:helpers to int 1.0 run data get entity @s data.j

# Divide value
function nn:math/activation/softmax/run_divide with storage nn:helpers