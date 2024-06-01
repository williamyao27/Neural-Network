# Reset loops
scoreboard players set .input_neuron_j global 0
scoreboard players set .create_neuron_loop global 0
scoreboard players set .create_neuron_loop_y global 0

# Start iterative neuron creation
function nn:neuron/input/create_loop