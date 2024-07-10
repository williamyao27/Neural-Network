# Processes the image currently displayed on the board by setting the input neurons according to its pixels.

execute as @e[type=marker,tag=input] at @s run function nn:model/input/set_neuron with entity @s data