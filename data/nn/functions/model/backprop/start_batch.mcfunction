# Starts the current batch of examples.

# Reset example counter for the batch
scoreboard players set .batch_loop train 0

# Zero out stored errors for each parameter
function nn:model/backprop/parameter/layer {layer:"output",prev_layer:"hidden1",operation:"zero"}
function nn:model/backprop/parameter/layer {layer:"hidden1",prev_layer:"input",operation:"zero"}