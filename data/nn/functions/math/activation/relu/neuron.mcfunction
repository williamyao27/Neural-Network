# Runs ReLU on the specified neuron.

# Store index of current neuron whose value is being ReLU'd
execute store result storage nn:helpers to int 1.0 run data get entity @s data.j

# Run ReLU
function nn:math/activation/relu/run with storage nn:helpers