# Create neuron
execute store result storage nn:helpers j int 1.0 run scoreboard players get .loop global
data merge storage nn:helpers {layer:"input"}
function nn:neuron/create_neuron with storage nn:helpers

# Increment total loop - this value is used to identify the neuron
scoreboard players add .loop global 1

# Increment inner loop
scoreboard players add .loop1 global 1

# If inner loop hasn't been exceeded, move self in x-direction
execute if score .loop1 global < .img_x global run return run execute positioned ~1 ~ ~ run function nn:neuron/create_input_loop

# Otherwise, reset the inner loop counter and increment the outer loop
scoreboard players set .loop1 global 0
scoreboard players add .loop2 global 1

# If this is the last iteration of the outer loop, return early
execute if score .loop2 global = .img_y global run return 0

# Otherwise, move self in y-direction
execute positioned 0 ~1 ~ run function nn:neuron/create_input_loop