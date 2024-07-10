# Runs the given operation on the parameters of the given layer.

# Reset loops
scoreboard players set .backprop_parameter_loop_from global 0
scoreboard players set .backprop_parameter_loop_to global 0

# Begin parameter update loop
function nn:model/backprop/parameter/operations_loop with storage nn:helpers