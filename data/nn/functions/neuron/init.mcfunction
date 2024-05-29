# Kill all neurons
kill @e[type=marker,tag=neuron]

# Create spawner
summon marker 0 0.5 0 {Tags:["spawner"]}

# Input layer
execute as @e[type=marker,tag=spawner,limit=1,sort=nearest] at @s run function nn:neuron/create_inputs

# Hidden layer 1
tp @e[type=marker,tag=spawner,limit=1,sort=nearest] 14 0 -10

# Hidden layer 2
tp @e[type=marker,tag=spawner,limit=1,sort=nearest] 14 0 -20

# Output layer
tp @e[type=marker,tag=spawner,limit=1,sort=nearest] 14 0 -30

# Show where neurons are
execute at @e[type=marker,tag=neuron] run particle block_marker{block_state:"barrier"} ~ ~ ~1 0 0 0 0 1 force

# Kill spawner
kill @e[type=marker,tag=spawner]