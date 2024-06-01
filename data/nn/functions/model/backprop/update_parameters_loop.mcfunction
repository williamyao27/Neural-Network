# Update weight
execute store result storage nn:helpers to int 1.0 run scoreboard players get .backprop_parameter_loop_to global
execute store result storage nn:helpers from int 1.0 run scoreboard players get .backprop_parameter_loop_from global
function nn:model/backprop/update_weight with storage nn:helpers

# Update one bias per neuron
execute if score .backprop_parameter_loop_from global matches 0 run function nn:model/backprop/update_bias with storage nn:helpers

# Increment inner loop
scoreboard players add .backprop_parameter_loop_from global 1

# If inner loop hasn't been exceeded, create next weight
$execute if score .backprop_parameter_loop_from global < .$(layer)_from global run return run function nn:model/backprop/update_parameters_loop with storage nn:helpers

# Otherwise, reset the inner loop counter and increment the outer loop
scoreboard players set .backprop_parameter_loop_from global 0
scoreboard players add .backprop_parameter_loop_to global 1

# If this is the last iteration of the outer loop, return early
$execute if score .backprop_parameter_loop_to global = .$(layer)_to global run return 0

# Otherwise, create next weight
function nn:model/backprop/update_parameters_loop with storage nn:helpers