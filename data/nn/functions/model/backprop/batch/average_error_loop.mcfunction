# Store current node whose errors are being averaged
execute store result storage nn:helpers batch_index int 1.0 run scoreboard players get .average_error_loop global

# Add to running sum
function nn:model/backprop/batch/add_error with storage nn:helpers

# Increment loop
scoreboard players add .average_error_loop global 1

# If loop hasn't been exceeded, compute next sum term
execute if score .average_error_loop global < .batch_size hyperparameter run return run function nn:model/backprop/batch/average_error_loop with storage nn:helpers

# On last iteration, divide by batch size and store to average gradient
scoreboard players operation .sum global /= .batch_size hyperparameter
$scoreboard players operation .bar_$(layer)_$(j) gradient = .sum global