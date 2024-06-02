# This function uses a hard-coded scale factor.

# Store
execute store result storage nn:helpers to int 1.0 run scoreboard players get .backprop_sum_loop_to global

# Add to running sum
function nn:model/backprop/hidden/add_error with storage nn:helpers

# Increment loop
scoreboard players add .backprop_sum_loop_to global 1

# If loop hasn't been exceeded, compute next sum term
$execute if score .backprop_sum_loop_to global < .$(next_layer)_to hyperparameter run return run function nn:model/backprop/hidden/compute_error_loop with storage nn:helpers

# On last iteration, set the gradient to the sum and ReLU it
$scoreboard players operation .bar_$(layer)_$(from) gradient = .sum global
$$execute unless score .$(layer)_$(from) neuron matches 0.. run scoreboard players set .bar_$(layer)_$(from) gradient 0