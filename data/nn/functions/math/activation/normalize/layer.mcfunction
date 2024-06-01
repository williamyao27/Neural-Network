# Runs the softmax-like normalization function on all neurons in the specified layer.

# Find maximum neuron value and index in this layer
$function nn:math/max/run {layer:$(layer)}

# Find minimum neuron value and index in this layer
$function nn:math/min/run {layer:$(layer)}

# Find the difference between maximum and minimum
scoreboard players operation .max_min_diff global = .max global
scoreboard players operation .max_min_diff global -= .min global

# Normalize all neurons
$data merge storage nn:helpers {layer:$(layer)}
$execute as @e[type=marker,tag=$(layer)] run function nn:math/activation/normalize/neuron