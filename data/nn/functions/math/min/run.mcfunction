# Finds the minimum value and index of the minimum neuron in the specified layer.

# Initialize loop
scoreboard players set .min_loop global 0

# Initialize result variables
scoreboard players set .argmin global -1
scoreboard players set .min global 2147483647

$data merge storage nn:helpers {layer:$(layer)}
function nn:math/min/run_loop with storage nn:helpers