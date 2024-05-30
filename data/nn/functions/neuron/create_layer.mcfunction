# Reset loops
scoreboard players set .loop global 0

# Start recursive neuron creation
$function nn:neuron/create_neuron_loop {layer:$(layer)}