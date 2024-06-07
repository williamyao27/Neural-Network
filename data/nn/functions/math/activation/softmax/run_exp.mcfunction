# Computes e to the power of the given neuron value and stores it back into the neuron. Also adds it to the running softmax sum.

# If the neuron's value is significantly negative and the max neuron in this layer is positive, then this neuron's softmax layer will be approximately 0
# The threshold for rounding it to 0 is hard-coded
$execute if score .max global matches 1.. if score .$(layer)_$(j) neuron matches ..-92104 run return run scoreboard players set .$(layer)_$(j) neuron 0

# Otherwise, compute the exponent
$function nn:math/e/compute {var_dest:".$(layer)_$(j)",obj_dest:"neuron",var_exp:".$(layer)_$(j)",obj_exp:"neuron"}

# Add the exponentiated value to sum
$scoreboard players operation .sum global += .$(layer)_$(j) neuron