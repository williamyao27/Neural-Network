# Runs the backprop algorithm through the entire model.

# Run forward pass
function nn:model/forward_pass/run

# Errors
execute as @e[type=marker,tag=output] run function nn:model/backprop/output/compute_error with entity @s data
execute as @e[type=marker,tag=hidden2] run function nn:model/backprop/hidden/compute_error {layer:"hidden2",next_layer:"output"}
execute as @e[type=marker,tag=hidden1] run function nn:model/backprop/hidden/compute_error {layer:"hidden1",next_layer:"hidden2"}

# Updates
function nn:model/backprop/layer {layer:"output",prev_layer:"hidden2"}
function nn:model/backprop/layer {layer:"hidden2",prev_layer:"hidden1"}
function nn:model/backprop/layer {layer:"hidden1",prev_layer:"input"}