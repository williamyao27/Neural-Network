# Compares the value of the neuron j in the given layer against the running min value to see if it is the argmin.

# If the value is larger, return early
$execute if score .$(layer)_$(j) neuron >= .min global run return fail

# Otherwise, set this neuron as the new min
$scoreboard players operation .min global = .$(layer)_$(j) neuron
$scoreboard players set .argmin global $(j)