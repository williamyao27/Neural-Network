# Formula
$scoreboard players operation .temp global = .bias_$(layer)_$(to) gradient
scoreboard players operation .temp global /= .batch_size hyperparameter

# If the gradient is too small (with respect to the learning rate), cancel the update
execute if score .temp global matches -99..99 run return 0

# Learning rate
function nn:math/multiply {var1:".temp",obj1:"global",var2:".learning_rate",obj2:"hyperparameter"}

# Update bias in scoreboard
$scoreboard players operation .$(layer)_$(to) bias -= .temp global