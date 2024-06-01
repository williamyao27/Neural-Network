# Calls all other initialization functions.

function nn:world/init
schedule function nn:board/init 5t
schedule function nn:scoreboard/init 10t
schedule function nn:neuron/init 15t
schedule function nn:parameter/init 20t