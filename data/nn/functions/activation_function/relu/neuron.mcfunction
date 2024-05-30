# Store current node whose value is being ReLU'd
execute store result storage nn:helpers to int 1.0 run data get entity @s data.j

# Run ReLU
function nn:activation_function/relu/run with storage nn:helpers