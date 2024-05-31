# Generate target vector
function nn:target/set_one_hot {class:1}

# Run forward pass
function nn:model/forward_pass/run

## Output layer
# bar_z3
execute as @e[type=marker,tag=output] run function nn:model/backprop/output/compute_error_wrapper
# Update parameters
function nn:model/backprop/layer {layer:"output",prev_layer:"hidden2",error:"z3"}

## Hidden layer 2
# bar_z2
execute as @e[type=marker,tag=hidden2] run function nn:model/backprop/hidden/compute_error_wrapper
# Update parameters

## Hidden layer 1
# bar_z1
# Update parameters

say run