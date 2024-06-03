# If the current block is black, set the neuron score to 0
$execute if block ~ ~ ~ black_concrete run return run scoreboard players set .input_$(j) neuron 0

# Otherwise, it is white so set it to 1 (in actuality, set it to the scale factor as all numbers are multiplied by that value)
$scoreboard players operation .input_$(j) neuron = .scale global
# $scoreboard players set .input_$(j) neuron 100