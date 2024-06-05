# This function uses a hard-coded scale factor.

# Formula
$scoreboard players operation .temp global = .weight_$(layer)_$(to)_$(from) gradient
scoreboard players operation .temp global /= .batch_size hyperparameter

# Weight regularization
# $scoreboard players operation .regularization global = .$(layer)_$(to)_$(from) weight
# function nn:math/multiply {var1:".regularization",obj1:"global",var2:".lambda",obj2:"hyperparameter"}
# $execute unless score .$(layer)_$(to)_$(from) weight matches -9..9 run tellraw @a [{"text":"$(layer)_$(to)_$(from) regularization: "},{"score":{"name":".regularization","objective":"global"},"color":"gold","bold":true},{"text":" total: "},{"score":{"name":".temp","objective":"global"},"color":"gold","bold":true}]
# $execute unless score .$(layer)_$(to)_$(from) weight matches -9..9 run scoreboard players operation .temp global += .regularization global

# If the gradient is too small (with respect to the learning rate), cancel the update
execute if score .temp global matches -9..9 run return 0

# Learning rate
function nn:math/multiply {var1:".temp",obj1:"global",var2:".learning_rate",obj2:"hyperparameter"}

# Update weight in scoreboard
$scoreboard players operation .$(layer)_$(to)_$(from) weight -= .temp global