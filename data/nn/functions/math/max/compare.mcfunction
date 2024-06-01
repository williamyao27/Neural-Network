# Compares the value of the neuron j in the given layer against the running max value to see if it is the argmax.

# If the value is smaller, return early
$execute if score .$(layer)_$(j) neuron <= .max global run return fail

# Otherwise, set this neuron as the new max
$scoreboard players operation .max global = .$(layer)_$(j) neuron
$scoreboard players set .argmax global $(j)