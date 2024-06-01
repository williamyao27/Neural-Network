# This function uses a hard-coded scale factor.

# Store current node whose sum is being computed
execute store result storage nn:helpers from int 1.0 run scoreboard players get .save_parameter_loop_from global

# Save weight
function nn:model/save/weight with storage nn:helpers

# Increment loop
scoreboard players add .save_parameter_loop_from global 1

# If loop hasn't been exceeded, save the next parameter(s)
$execute if score .save_parameter_loop_from global < .$(layer)_from global run return run function nn:model/save/neuron_parameters_loop with storage nn:helpers

# On last iteration, save the bias term
$execute store result storage nn:biases $(layer)_$(to) float 0.001 run scoreboard players get .$(layer)_$(to) bias