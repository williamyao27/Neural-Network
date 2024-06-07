# Get previous layer value
$function nn:math/equal {var1:".temp",obj1:"global",var2:".$(prev_layer)_$(from)",obj2:"neuron"}

# Multiply by weight
$function nn:math/multiply {var1:".temp",obj1:"global",var2:".$(layer)_$(to)_$(from)",obj2:"weight"}

# Add to running sum
function nn:math/add {var1:".sum",obj1:"global",var2:".temp",obj2:"global"}

# If the weighted contribution from the current neuron in the previous layer exceeds a certain threshold of magnitude, draw a line towards it
# This threshold is hard-coded
$execute if score .visualize settings matches 1 unless score .temp global matches -299..299 anchored feet facing entity @e[type=marker,tag=$(prev_layer),tag=$(from),limit=1,sort=nearest] feet run function nn:model/display/weight/draw_line