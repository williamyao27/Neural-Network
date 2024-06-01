# Store index of current neuron whose value is being normalized
execute store result storage nn:helpers to int 1.0 run data get entity @s data.j

# Run normalization
function nn:math/activation/normalize/run with storage nn:helpers