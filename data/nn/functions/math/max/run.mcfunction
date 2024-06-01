# Finds the maximum value and index of the maximum neuron in the specified layer.

# Initialize loop
scoreboard players set .max_loop global 0

# Initialize result variables
scoreboard players set .argmax global -1
scoreboard players set .max global -2147483647

$data merge storage nn:helpers {layer:$(layer)}
function nn:math/max/run_loop with storage nn:helpers