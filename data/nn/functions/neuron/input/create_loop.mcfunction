# Create neuron
execute store result storage nn:helpers j int 1.0 run scoreboard players get .input_neuron_j global
data merge storage nn:helpers {layer:"input"}
function nn:neuron/create with storage nn:helpers

# Increment the index of the next input neuron
scoreboard players add .input_neuron_j global 1

# Increment inner loop
scoreboard players add .create_neuron_loop global 1

# If inner loop hasn't been exceeded, move self in x-direction
execute if score .create_neuron_loop global < .img_x hyperparameter run return run execute positioned ~1 ~ ~ run function nn:neuron/input/create_loop

# Otherwise, reset the inner loop counter and increment the outer loop
scoreboard players set .create_neuron_loop global 0
scoreboard players add .create_neuron_loop_y global 1

# If this is the last iteration of the outer loop, return early
execute if score .create_neuron_loop_y global = .img_y hyperparameter run return 0

# Otherwise, move self in y-direction and repeat
execute positioned 0 ~1 ~ run function nn:neuron/input/create_loop