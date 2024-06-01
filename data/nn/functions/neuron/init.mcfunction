# Initializes all neurons in the model by spawning a marker entity for each one.

# Kill all existing neurons
kill @e[type=marker,tag=neuron]

# Create moving spawner marker
summon marker 0 0.5 0 {Tags:["spawner"]}

# Input layer
execute as @e[type=marker,tag=spawner,limit=1,sort=nearest] at @s run function nn:neuron/input/create_layer

# Hidden layer 1
tp @e[type=marker,tag=spawner,limit=1,sort=nearest] 14 0.5 -10
execute as @e[type=marker,tag=spawner,limit=1,sort=nearest] at @s run function nn:neuron/create_layer {layer:"hidden1"}

# Hidden layer 2
tp @e[type=marker,tag=spawner,limit=1,sort=nearest] 14 0.5 -20
execute as @e[type=marker,tag=spawner,limit=1,sort=nearest] at @s run function nn:neuron/create_layer {layer:"hidden2"}

# Output layer
tp @e[type=marker,tag=spawner,limit=1,sort=nearest] 14 0.5 -30
execute as @e[type=marker,tag=spawner,limit=1,sort=nearest] at @s run function nn:neuron/create_layer {layer:"output"}

# Show where neurons are
execute at @e[type=marker,tag=neuron] run particle block_marker{block_state:"barrier"} ~ ~ ~1 0 0 0 0 1 force

# Kill spawner
kill @e[type=marker,tag=spawner]