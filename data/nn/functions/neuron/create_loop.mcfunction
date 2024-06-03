# Create neuron
execute store result storage nn:helpers j int 1.0 run scoreboard players get .create_neuron_loop global
$data merge storage nn:helpers {layer:$(layer)}
function nn:neuron/create with storage nn:helpers

# Increment loop
scoreboard players add .create_neuron_loop global 1

# If loop hasn't been exceeded, move self in y-direction
$execute if score .create_neuron_loop global < .$(layer)_to hyperparameter positioned ~ ~-1.5 ~ run function nn:neuron/create_loop {layer:$(layer)}