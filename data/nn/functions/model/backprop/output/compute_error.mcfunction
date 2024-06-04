# Computes the error for the given node in the output layer.

$scoreboard players operation .output_$(j) gradient = .output_$(j) neuron
$scoreboard players operation .output_$(j) gradient -= .target_$(j) target