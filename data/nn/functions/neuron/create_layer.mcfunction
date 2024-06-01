# Reset loops
scoreboard players set .create_neuron_loop global 0

# Start iterative neuron creation
$function nn:neuron/create_loop {layer:$(layer)}