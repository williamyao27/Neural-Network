# Computes the weighted sum for the given neuron in a loop.

# Store current node whose sum is being computed
execute store result storage nn:helpers from int 1.0 run scoreboard players get .forward_pass_sum_loop_from global

# Add to running sum
function nn:model/forward_pass/add_signal with storage nn:helpers

# Increment loop
scoreboard players add .forward_pass_sum_loop_from global 1

# If loop hasn't been exceeded, compute next sum term
$execute if score .forward_pass_sum_loop_from global < .$(layer)_from hyperparameter run return run function nn:model/forward_pass/compute_sum_loop with storage nn:helpers

# On last iteration, add the bias term, then set the neuron to the weighted sum + bias
$scoreboard players operation .sum global += .$(layer)_$(to) bias
$scoreboard players operation .$(layer)_$(to) neuron = .sum global

# Display neuron value with armor stand
execute if score .visualize settings matches 1 store result storage nn:helpers name int 1.0 run scoreboard players get .sum global
execute if score .visualize settings matches 1 run function nn:model/display/neuron/spawn_wrapper