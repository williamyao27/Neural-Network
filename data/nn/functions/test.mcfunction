# Calls all other initialization functions.

# Inits
function nn:world/init
function nn:board/init
function nn:scoreboard/init

# Cleanup
function nn:model/display/bar_graph/erase_wrapper
function nn:evaluation/bar_graph/erase_wrapper
kill @e[type=marker,tag=loader]

tellraw @a [{"text":"Neural network successfully initialized.","color":"green"}]

# TEST
scoreboard players set .learning_rate hyperparameter 100
scoreboard players set .batch_size hyperparameter 1
scoreboard players set .img_x hyperparameter 2
scoreboard players set .img_y hyperparameter 2
scoreboard players set .hidden1_from hyperparameter 2
scoreboard players set .hidden1_to hyperparameter 2
scoreboard players set .hidden1_init hyperparameter 0
scoreboard players set .output_from hyperparameter 2
scoreboard players set .output_to hyperparameter 2
scoreboard players set .output_init hyperparameter 0

# Create test network
schedule function nn:neuron/init 10t
schedule function nn:parameter/init 20t

function nn:target/set {class:0}
setblock 0 0 0 air
function nn:model/backprop/run

execute unless score .output_0_0 weight matches 0 run say error