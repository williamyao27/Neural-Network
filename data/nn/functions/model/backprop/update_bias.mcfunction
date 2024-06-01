# This function uses a hard-coded scale factor.

# Formula
$scoreboard players operation .temp global = .bar_$(layer)_$(to) gradient

# Learning rate
function nn:math/multiply {var1:".temp",obj1:"global",var2:".learning_rate",obj2:"global"}

# Update bias in scoreboard
$scoreboard players operation .$(layer)_$(to) bias -= .temp global