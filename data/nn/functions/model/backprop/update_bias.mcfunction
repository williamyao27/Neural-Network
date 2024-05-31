# This function uses a hard-coded scale factor.

# Formula
$scoreboard players operation .temp global = .bar_$(error)_$(to) gradient

# Learning rate
function nn:math/multiply {var1:".temp",obj1:"global",var2:".learning_rate",obj2:"global"}

# Update bias in scoreboard
$scoreboard players operation .$(layer)_$(to)_bias bias -= .temp global

# Save to storage
$execute store result storage nn:biases $(layer)_$(to)_bias float 0.001 run scoreboard players get .$(layer)_$(to)_bias bias