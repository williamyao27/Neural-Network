# Runs softmax on all neurons in the specified layer.

# Find minimum neuron value and index in this layer
$function nn:math/min/run {layer:$(layer)}

# Normalize all exponents by subtracting the minimum exponent as well as a constant amount
# This is because of a BUG: gradients tend to explode?
$execute as @e[type=marker,tag=$(layer)] run function nn:math/activation/softmax/neuron_normalize

# Initialize sum
scoreboard players set .sum global 0

# Set all neurons to e^normalized logit
$data merge storage nn:helpers {layer:$(layer)}
$execute as @e[type=marker,tag=$(layer)] run function nn:math/activation/softmax/neuron_exp

# By now, all neurons have been exponentiated; divide each by the sum of all exponents
$execute as @e[type=marker,tag=$(layer)] run function nn:math/activation/softmax/neuron_divide