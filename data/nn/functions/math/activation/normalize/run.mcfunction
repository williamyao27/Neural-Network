# Squashes the neuron value based on the given range, with all results being from 0 to 100.

$scoreboard players operation .$(layer)_$(to) neuron -= .min global
$scoreboard players operation .$(layer)_$(to) neuron *= .max_bar_length constant
$scoreboard players operation .$(layer)_$(to) neuron /= .max_min_diff global