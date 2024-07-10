# Computes the weighted sum for the given neuron's value.

# Store index of current neuron whose sum is being computed
execute store result storage nn:helpers to int 1.0 run data get entity @s data.j

# Initialize loop and sum
scoreboard players set .forward_pass_sum_loop_from global 0
scoreboard players set .sum global 0

# Begin sum computation
function nn:model/forward_pass/compute_sum_loop with storage nn:helpers