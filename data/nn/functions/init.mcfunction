# Calls all other initialization functions.

function nn:world/init
function nn:board/init
function nn:scoreboard/init
function nn:model/display/bar_graph/erase_wrapper
schedule function nn:neuron/init 10t
schedule function nn:parameter/init 20t

tellraw @a [{"text":"Neural network successfully initialized.","color":"green"}]