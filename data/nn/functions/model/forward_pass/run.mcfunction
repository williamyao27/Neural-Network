# Runs forward pass in the model.

# Remove neuron displays
function nn:model/display/neuron/remove_all

# Input layer
function nn:model/input/process_image

# Hidden layer 1
function nn:model/forward_pass/layer {layer:"hidden1",prev_layer:"input"}
function nn:math/activation/relu/layer {layer:"hidden1"}

# Output layer
function nn:model/forward_pass/layer {layer:"output",prev_layer:"hidden1"}

# Output logit report
# Note that this must be done before running the output layer activation function as we want to print the
# unnormalized logit values.
function nn:model/display/print_output_logits

# Output layer activation function
# Ideally, we should be using softmax as the activation function for the final layer
# to squash the probabilities between 0 and 1, and because the backprop update rules depend on this assumption.
# However, the exponentiation function is somewhat buggy, so we will use a different normalization function.
# Note that normalization is done purely to build the visual bar graphs so that the smallest and largest bars
# have fixed lengths. Normalization itself is not necessary to select the model's prediction because the argmax
# of the raw logits will remain the argmax of the normalized (or softmaxed, for that matter) logits.
# function nn:math/activation/normalize/layer {layer:"output"}
function nn:math/max/run {layer:"output"}
function nn:math/activation/softmax/layer {layer:"output"}

# Display output
function nn:model/display/print_prediction
# function nn:model/display/bar_graph/build