# Sets the specified input neuron based on the color of the corresponding block on the board.

# The fractional component is always 0
$scoreboard players operation .input_$(j)_frac neuron = 0

# If the current block is black, set the neuron to 0
$execute if block ~ ~ ~ black_concrete run return run scoreboard players set .input_$(j) neuron 0

# Otherwise, it is white, so set it to 1
$scoreboard players operation .input_$(j) neuron = 1
