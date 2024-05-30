# Create neuron
execute store result storage nn:helpers j int 1.0 run scoreboard players get .loop global
$data merge storage nn:helpers {layer:$(layer)}
function nn:neuron/create_neuron with storage nn:helpers

# Increment loop
scoreboard players add .loop global 1

# If loop hasn't been exceeded, move self in x-direction
$execute if score .loop global < .$(layer)_to global positioned ~ ~1 ~ run function nn:neuron/create_neuron_loop {layer:$(layer)}