$data merge storage nn:helpers {layer:$(layer)}

# Reset loops
scoreboard players set .create_parameter_loop_from global 0
scoreboard players set .create_parameter_loop_to global 0

# Start iterative parameters creation
function nn:parameter/create_loop with storage nn:helpers