# This function uses a hard-coded scale factor.

# Get weight from storage with scale factor
$execute store result score .$(layer)_$(to)_$(from) weight run data get storage nn:weights $(layer)_$(to)_$(from) 1000

# Get previous layer value
$scoreboard players operation .temp global = .$(prev_layer)_$(from) neuron

# Multiply by weight
$function nn:math/multiply {var1:".temp",obj1:"global",var2:".$(layer)_$(to)_$(from)",obj2:"weight"}

# Add to running sum
scoreboard players operation .sum global += .temp global