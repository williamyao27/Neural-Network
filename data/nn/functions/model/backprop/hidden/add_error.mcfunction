# This function uses a hard-coded scale factor.

# Get derivative of error in the next layer with respect to error in this layer
$scoreboard players operation .temp global = .$(next_layer)_$(to)_$(from) weight

# Multiply by derivative of loss with respect to error (chain rule)
$function nn:math/multiply {var1:".temp",obj1:"global",var2:".bar_$(next_layer)_$(to)",obj2:"gradient"}

# Add to running sum
scoreboard players operation .sum global += .temp global