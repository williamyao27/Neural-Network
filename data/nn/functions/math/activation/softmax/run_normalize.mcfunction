# Normalizes all logits going into the softmax function by subtracting by the largest logit, assuming it is significantly positive enough.
# Note that this does not affect the final output of the softmax function; softmax is invariant to subtracting the same amount from all logits.

# Normalization threshold is hard-coded; past e^7.6, the softmax function breaks
$execute if score .max global matches 76000.. run scoreboard players operation .$(layer)_$(j) neuron -= .max global