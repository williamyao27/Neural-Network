# Store index of the current neuron whose value is being normalized
execute store result storage nn:helpers to int 1.0 run data get entity @s data.j

# Normalize value
function nn:math/activation/softmax/run_normalize with storage nn:helpers