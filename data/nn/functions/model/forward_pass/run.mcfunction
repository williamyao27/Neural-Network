# Runs forward pass in the model.

## Input layer
# Set input neurons to 0 or 1 based on pixel content
function nn:model/input/process_image

## Hidden layer 1
function nn:model/forward_pass/layer {layer:"hidden1",prev_layer:"input"}
function nn:math/activation/relu/layer {layer:"hidden1"}

## Hidden layer 2
function nn:model/forward_pass/layer {layer:"hidden2",prev_layer:"hidden1"}
function nn:math/activation/relu/layer {layer:"hidden2"}

## Output layer
function nn:model/forward_pass/layer {layer:"output",prev_layer:"hidden2"}
# Activation function: ideally, we should be using softmax as the activation function for the final layer
# to squash the probabilities between 0 and 1, and because the backprop update rules depend on this assumption.
# However, the exponentiation function is somewhat buggy, so we will use a different argmax function.
# Empirically, this is not horrible even if the backprop rules are computed assuming that we were using softmax.
# function nn:math/activation/softmax/layer {layer:"output"}