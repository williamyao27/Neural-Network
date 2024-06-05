# Runs the backprop algorithm through the entire model.

# Run forward pass
function nn:model/forward_pass/run

# Compute errors on this example
execute as @e[type=marker,tag=output] run function nn:model/backprop/output/compute_error_wrapper
execute as @e[type=marker,tag=hidden1] run function nn:model/backprop/hidden/compute_error {layer:"hidden1",next_layer:"output"}

# Record error signal for each parameter
execute store result storage nn:helpers batch_index int 1.0 run scoreboard players get .batch_loop train
function nn:model/backprop/parameter/layer {layer:"output",prev_layer:"hidden1",operation:"record"}
# function nn:model/backprop/parameter/layer {layer:"hidden1",prev_layer:"input",operation:"record"}

# If this is the last example in the current minibatch, perform parameter updates
scoreboard players add .batch_loop train 1
execute if score .batch_loop train < .batch_size hyperparameter run return 0

# Update parameters based on average of recorded gradients
function nn:model/backprop/parameter/layer {layer:"output",prev_layer:"hidden1",operation:"update"}
# function nn:model/backprop/parameter/layer {layer:"hidden1",prev_layer:"input",operation:"update"}

# Start new batch
function nn:model/backprop/start_batch