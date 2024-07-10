# Adds the current gradient to the running gradient sum.

$scoreboard players operation .bias_$(layer)_$(to) gradient += .$(layer)_$(to) gradient