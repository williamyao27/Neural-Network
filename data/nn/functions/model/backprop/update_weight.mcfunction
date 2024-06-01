# This function uses a hard-coded scale factor.

# Formula
$scoreboard players operation .temp global = .bar_$(layer)_$(to) gradient
$function nn:math/multiply {var1:".temp",obj1:"global",var2:".$(prev_layer)_$(from)",obj2:"neuron"}

# Learning rate
function nn:math/multiply {var1:".temp",obj1:"global",var2:".learning_rate",obj2:"global"}

# Update weight in scoreboard
$scoreboard players operation .$(layer)_$(to)_$(from) weight -= .temp global