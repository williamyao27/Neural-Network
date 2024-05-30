# Reset loops
scoreboard players set .loop1 global 0
scoreboard players set .loop2 global 0

# Start recursive weight creation
$function nn:weight/create_weight_loop {layer:$(layer)}