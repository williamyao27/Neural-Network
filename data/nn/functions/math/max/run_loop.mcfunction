# Iterates through all neurons in the given layer to find the maximum value and index of the maximum neuron.

# Compare current neuron to the running max
execute store result storage nn:helpers j int 1.0 run scoreboard players get .max_loop global
function nn:math/max/compare with storage nn:helpers

# Increment loop
scoreboard players add .max_loop global 1

# If loop hasn't been exceeded, compute next sum term
$execute if score .max_loop global < .$(layer)_to hyperparameter run return run function nn:math/max/run_loop with storage nn:helpers