# Store current node whose error is being computed
execute store result storage nn:helpers from int 1.0 run data get entity @s data.j
$data merge storage nn:helpers {layer:$(layer)}
$data merge storage nn:helpers {next_layer:$(next_layer)}

# Initialize loop and sum
scoreboard players set .backprop_sum_loop_to global 0
scoreboard players set .sum global 0

# Begin sum computation
function nn:model/backprop/hidden/compute_error_loop with storage nn:helpers