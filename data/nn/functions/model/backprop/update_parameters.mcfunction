# Reset loops
scoreboard players set .loop1 global 0
scoreboard players set .loop2 global 0

# Begin parameter update loop
function nn:model/backprop/update_parameters_loop with storage nn:helpers