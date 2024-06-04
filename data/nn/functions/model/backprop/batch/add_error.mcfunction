# Adds the error computed for the given neuron in the given layer on the given example in the current batch.

$scoreboard players operation .sum global += .bar_$(layer)_$(j)_$(batch_index) gradient