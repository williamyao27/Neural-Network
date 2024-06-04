# Wrapper function for computing the error for nodes in the output layer.

execute store result storage nn:helpers j int 1.0 run data get entity @s data.j
function nn:model/backprop/output/compute_error with storage nn:helpers