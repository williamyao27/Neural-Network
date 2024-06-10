# Calls all other initialization functions.

# Inits
function nn:world/init
function nn:board/init
function nn:scoreboard/init
schedule function nn:neuron/init 10t
schedule function nn:parameter/init 20t

# Cleanup
function nn:model/display/bar_graph/erase_wrapper
function nn:train/evaluation/bar_graph/erase_wrapper
kill @e[type=marker,tag=loader]

tellraw @a [{"text":"Neural network successfully initialized.","color":"green"}]