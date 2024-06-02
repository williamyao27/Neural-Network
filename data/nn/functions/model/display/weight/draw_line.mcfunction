# Draws a line from the caller towards the next neuron in the caller's current direction.

particle end_rod ~ ~ ~ 0 0 0 0 1 force

# Recursive call
execute positioned ^ ^ ^0.8 unless entity @e[type=marker,tag=neuron,distance=..0.79] run function nn:model/display/weight/draw_line