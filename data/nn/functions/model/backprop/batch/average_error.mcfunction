# Store index of current neuron whose errors for the current batch are being averaged
execute store result storage nn:helpers j int 1.0 run data get entity @s data.j

# Initialize loop and sum
scoreboard players set .average_error_loop global 0
scoreboard players set .sum global 0

# Begin average computation
function nn:model/backprop/batch/average_error_loop with storage nn:helpers