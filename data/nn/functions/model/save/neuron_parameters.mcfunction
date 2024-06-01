# Store current node whose sum is being computed
execute store result storage nn:helpers to int 1.0 run data get entity @s data.j

# Initialize loop and sum
scoreboard players set .save_parameter_loop_from global 0

# Begin save routine
function nn:model/save/parameters_loop with storage nn:helpers