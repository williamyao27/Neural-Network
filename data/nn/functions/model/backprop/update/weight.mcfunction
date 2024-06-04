# This function uses a hard-coded scale factor.

# Formula
$scoreboard players operation .temp global = .bar_$(layer)_$(to) gradient
$function nn:math/multiply {var1:".temp",obj1:"global",var2:".$(prev_layer)_$(from)",obj2:"neuron"}

# $tellraw @a [{"text":"$(layer)_$(to)_$(from): "},{"score":{"name":".temp","objective":"global"},"color":"gold","bold":true}]

# Learning rate
function nn:math/multiply {var1:".temp",obj1:"global",var2:".learning_rate",obj2:"hyperparameter"}

# Weight regularization
$scoreboard players operation .regularization global = .$(layer)_$(to)_$(from) weight
function nn:math/multiply {var1:".regularization",obj1:"global",var2:".lambda",obj2:"hyperparameter"}
scoreboard players operation .temp global += .regularization global

# Update weight in scoreboard
$scoreboard players operation .$(layer)_$(to)_$(from) weight -= .temp global