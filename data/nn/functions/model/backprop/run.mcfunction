# Runs the backprop algorithm through the entire model.

# Run forward pass
function nn:model/forward_pass/run

## Errors
# The errors for each neuron are stored by example, then eventually averaged with respect to batch size to compute gradients

# Add errors
execute store result storage nn:helpers batch_index int 1.0 run scoreboard players get .batch_loop train
execute as @e[type=marker,tag=output] run function nn:model/backprop/output/compute_error_wrapper
execute as @e[type=marker,tag=hidden1] run function nn:model/backprop/hidden/compute_error {layer:"hidden1",next_layer:"output"}

# If this is the last example in the current minibatch, perform parameter updates
scoreboard players add .batch_loop train 1
execute if score .batch_loop train < .batch_size hyperparameter run return 0

# Average the errors
function nn:model/backprop/batch/average_layer_errors {layer:"output"}
function nn:model/backprop/batch/average_layer_errors {layer:"hidden1"}

# Parameter updates
function nn:model/backprop/update/layer {layer:"output",prev_layer:"hidden1"}
# function nn:model/backprop/update/layer {layer:"hidden1",prev_layer:"input"}

# Start new batch
function nn:model/backprop/batch/start