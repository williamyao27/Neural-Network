# Normalizes all logits going into the softmax function by subtracting by the smallest logit, assuming they are all positive.
# Note that this does not affect the final output of the function!

$execute if score .min global matches 1.. run scoreboard players operation .$(layer)_$(to) neuron -= .min global

# Also remove a constant amount from the exponent; in practice, the logits tend to explode
# $scoreboard players remove .$(layer)_$(to) neuron 3000