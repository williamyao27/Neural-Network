# Initializes all neurons in the model by spawning an armor stand for each one.

# Kill all existing neurons
kill @e[type=marker,tag=neuron]
function nn:model/display/neuron/remove_all

# Create moving spawner marker
summon marker 0 0.5 0 {Tags:["spawner"]}

# Input layer
execute as @e[type=marker,tag=spawner,limit=1,sort=nearest] at @s run function nn:neuron/input/create_layer

# Hidden layer 1
tp @e[type=marker,tag=spawner,limit=1,sort=nearest] 14 35 20
execute as @e[type=marker,tag=spawner,limit=1,sort=nearest] at @s run function nn:neuron/create_layer {layer:"hidden1"}

# Output layer
tp @e[type=marker,tag=spawner,limit=1,sort=nearest] 14 22 60
execute as @e[type=marker,tag=spawner,limit=1,sort=nearest] at @s run function nn:neuron/create_layer {layer:"output"}

# Kill spawner
kill @e[type=marker,tag=spawner]