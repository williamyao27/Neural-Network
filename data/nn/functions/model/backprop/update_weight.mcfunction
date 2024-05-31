# This function uses a hard-coded scale factor.

# Formula
$scoreboard players operation .temp global = .bar_$(error)_$(to) gradient
$scoreboard players operation .temp global *= .$(prev_layer)_$(from) neuron 

# Learning rate
function nn:math/multiply {var1:".temp",obj1:"global",var2:".learning_rate",obj2:"global"}

# Update weight in scoreboard
$scoreboard players operation .$(layer)_$(to)_$(from) weight -= .temp global

# Save
$execute store result storage nn:weights $(layer)_$(to)_$(from) float 0.001 run scoreboard players get .$(layer)_$(to)_$(from) weight