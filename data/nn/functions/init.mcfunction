# Initializes and resets the network and world.

# Inits
function nn:world/init
function nn:board/init
function nn:scoreboard/init
schedule function nn:neuron/init 10t
schedule function nn:parameter/init 20t

# Cleanup
function nn:model/display/bar_graph/erase_wrapper
function nn:train/evaluation/bar_graph/erase_wrapper
kill @e[type=marker,tag=train_loader]
kill @e[type=marker,tag=test_loader]

# Notification
tellraw @a [{"text":"Neural network successfully initialized.","color":"green"}]