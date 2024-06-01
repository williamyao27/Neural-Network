# This function uses a hard-coded scale factor.

# Get previous layer value
$scoreboard players operation .temp global = .$(prev_layer)_$(from) neuron

# Multiply by weight
$function nn:math/multiply {var1:".temp",obj1:"global",var2:".$(layer)_$(to)_$(from)",obj2:"weight"}

# Add to running sum
scoreboard players operation .sum global += .temp global