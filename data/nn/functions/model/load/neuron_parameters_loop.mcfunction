# This function uses a hard-coded scale factor.

# Store current node whose sum is being computed
execute store result storage nn:helpers from int 1.0 run scoreboard players get .load_parameter_loop_from global

# Load weight
function nn:model/load/weight with storage nn:helpers

# Increment loop
scoreboard players add .load_parameter_loop_from global 1

# If loop hasn't been exceeded, load the next parameter(s)
$execute if score .load_parameter_loop_from global < .$(layer)_from global run return run function nn:model/load/neuron_parameters_loop with storage nn:helpers

# On last iteration, load the bias term
$execute store result score .$(layer)_$(to) bias run data get storage nn:biases $(layer)_$(to) 1000