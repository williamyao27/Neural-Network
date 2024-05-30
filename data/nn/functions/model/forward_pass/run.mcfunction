# Process input
function nn:model/input/process_image

# Hidden layer 1
function nn:model/forward_pass/layer {layer:"hidden1",prev_layer:"input"}
function nn:activation_function/relu/layer {layer:"hidden1"}

# Hidden layer 2
function nn:model/forward_pass/layer {layer:"hidden2",prev_layer:"hidden1"}
function nn:activation_function/relu/layer {layer:"hidden2"}

# Output layer
function nn:model/forward_pass/layer {layer:"output",prev_layer:"hidden2"}
function nn:activation_function/relu/layer {layer:"output"}