$data merge storage nn:helpers {layer:$(layer)}

# Reset loops
scoreboard players set .loop1 global 0
scoreboard players set .loop2 global 0

# Start iterative parameters creation
function nn:parameter/create_loop with storage nn:helpers