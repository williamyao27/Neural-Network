# Computes e to the power of the exponent variable and stores it into the destination variable, and also adds it to the running softmax sum.

$function nn:math/e/compute {var_dest:".$(layer)_$(to)",obj_dest:"neuron",var_exp:".$(layer)_$(to)",obj_exp:"neuron"}

# Add the exponentiated value to sum
$scoreboard players operation .sum global += .$(layer)_$(to) neuron