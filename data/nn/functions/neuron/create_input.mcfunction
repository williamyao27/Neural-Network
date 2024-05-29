# Create neuron
function nn:neuron/create

# Increment inner loop
scoreboard players add .loop1 global 1

# If inner loop hasn't been exceeded, move self in x-direction
execute if score .loop1 global < .img_x global run return run execute positioned ~1 ~ ~ run function nn:neuron/create_input

# Otherwise, reset the inner loop counter and increment the outer loop
scoreboard players set .loop1 global 0
scoreboard players add .loop2 global 1

# If this is the last iteration of the outer loop, return early
execute if score .loop2 global = .img_y global run return 0

# Otherwise, move self in y-direction
execute positioned 0 ~1 ~ run function nn:neuron/create_input