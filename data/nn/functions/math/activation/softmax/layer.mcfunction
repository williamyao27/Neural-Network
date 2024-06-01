# Runs softmax on all neurons in the specified layer.

# Initialize sum
scoreboard players set .sum global 0

# Set all neurons to e^logit
$data merge storage nn:helpers {layer:$(layer)}
$execute as @e[type=marker,tag=$(layer)] run function nn:math/activation/softmax/neuron_exp

# By now, all neurons have been exponentiated; divide each by the sum of all exponents
$execute as @e[type=marker,tag=$(layer)] run function nn:math/activation/softmax/neuron_divide