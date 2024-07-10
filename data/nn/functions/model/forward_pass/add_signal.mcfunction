# Adds the incoming signal from the given neuron in the previous layer to the running weighted sum.

# Get previous layer value
$scoreboard players operation .temp global = .$(prev_layer)_$(from) neuron

# Multiply by weight
$function nn:math/multiply {var1:".temp",obj1:"global",var2:".$(layer)_$(to)_$(from)",obj2:"weight"}

# Add to running sum
scoreboard players operation .sum global += .temp global

# If the weighted contribution from the current neuron in the previous layer exceeds a certain threshold of magnitude, draw a line towards it
# This threshold is hard-coded
$execute if score .visualize settings matches 1 unless score .temp global matches -$(weight_visualization_threshold)..$(weight_visualization_threshold) anchored feet facing entity @e[type=marker,tag=$(prev_layer),tag=$(from),limit=1,sort=nearest] feet run function nn:model/display/weight/draw_line