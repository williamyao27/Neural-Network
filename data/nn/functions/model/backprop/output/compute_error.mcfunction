# Computes the error for the given node in the output layer.

$scoreboard players operation .bar_output_$(j)_$(batch_index) gradient = .output_$(j) neuron
$scoreboard players operation .bar_output_$(j)_$(batch_index) gradient -= .target_$(j) target