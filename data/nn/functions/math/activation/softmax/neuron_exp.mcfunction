# Store current node whose value is being exponentiated
execute store result storage nn:helpers to int 1.0 run data get entity @s data.j

# Store exponentiation into temp
function nn:math/activation/softmax/run_exp with storage nn:helpers