# Create weight
execute store result storage nn:helpers to int 1.0 run scoreboard players get .loop2 global
execute store result storage nn:helpers from int 1.0 run scoreboard players get .loop1 global
$data merge storage nn:helpers {layer:$(layer)}
function nn:weight/create_weight with storage nn:helpers

# Create one bias per neuron
execute if score .loop1 global matches 0 run function nn:weight/create_bias with storage nn:helpers

# Increment inner loop
scoreboard players add .loop1 global 1

# If inner loop hasn't been exceeded, create next weight
$execute if score .loop1 global < .$(layer)_in global run return run function nn:weight/create_weight_loop {layer:$(layer)}

# Otherwise, reset the inner loop counter and increment the outer loop
scoreboard players set .loop1 global 0
scoreboard players add .loop2 global 1

# If this is the last iteration of the outer loop, return early
$execute if score .loop2 global = .$(layer)_out global run return 0

# Otherwise, create next weight
$function nn:weight/create_weight_loop {layer:$(layer)}