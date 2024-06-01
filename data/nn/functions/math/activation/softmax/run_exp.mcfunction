# DEBUG: print pre-exp value
# $tellraw @a {"score":{"name":".$(layer)_$(to)","objective":"neuron"}}

$function nn:math/e/compute {var_dest:".$(layer)_$(to)",obj_dest:"neuron",var_exp:".$(layer)_$(to)",obj_exp:"neuron"}

# Add the exponentiated value to sum
$scoreboard players operation .sum global += .$(layer)_$(to) neuron