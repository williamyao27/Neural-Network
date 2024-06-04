$scoreboard players operation .temp global = .$(layer)_$(to) gradient
$function nn:math/multiply {var1:".temp",obj1:"global",var2:".$(prev_layer)_$(from)",obj2:"neuron"}
$scoreboard players operation .weight_$(layer)_$(to)_$(from) gradient += .temp global