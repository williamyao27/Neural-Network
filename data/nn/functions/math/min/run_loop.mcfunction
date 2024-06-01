# Iterates through all neurons in the given layer to find the minimum value and index of the minimum neuron.

# Compare current neuron to the running min
execute store result storage nn:helpers j int 1.0 run scoreboard players get .min_loop global
function nn:math/min/compare with storage nn:helpers

# Increment loop
scoreboard players add .min_loop global 1

# If loop hasn't been exceeded, compute next sum term
$execute if score .min_loop global < .$(layer)_to hyperparameter run return run function nn:math/min/run_loop with storage nn:helpers