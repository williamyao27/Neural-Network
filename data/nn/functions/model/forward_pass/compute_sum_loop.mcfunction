# This function uses a hard-coded scale factor.

# Store current node whose sum is being computed
execute store result storage nn:helpers from int 1.0 run scoreboard players get .loop global

# Add to running sum
function nn:model/forward_pass/add_signal with storage nn:helpers

# Increment loop
scoreboard players add .loop global 1

# If loop hasn't been exceeded, compute next sum operand
$execute if score .loop global < .$(layer)_from global run return run function nn:model/forward_pass/compute_sum_loop with storage nn:helpers

# On last iteration, divide the running sum by the scale factor, then add the bias term
scoreboard players operation .sum global /= .scale global
$execute store result score .temp global run data get storage nn:weights $(layer)_$(to)_bias 1000
scoreboard players operation .sum global += .temp global
$scoreboard players operation .$(layer)_$(to) neuron = .sum global