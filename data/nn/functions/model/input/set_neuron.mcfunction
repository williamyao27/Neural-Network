# Sets the neuron with the given index in the input layer based on the color of its corresponding pixel.

# If the current block is black, set the neuron score to 0
$execute if block ~ ~ ~ black_concrete run return run scoreboard players set .input_$(j) neuron 0

# Otherwise, it is white so set it to 1
$scoreboard players operation .input_$(j) neuron = .scale global