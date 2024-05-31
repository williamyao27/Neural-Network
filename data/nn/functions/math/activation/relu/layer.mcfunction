# Runs ReLU on all neurons in the specified layer.

$data merge storage nn:helpers {layer:$(layer)}
$execute as @e[type=marker,tag=$(layer)] run function nn:math/activation/relu/neuron