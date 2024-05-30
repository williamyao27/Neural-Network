execute store result storage nn:helpers from int 1.0 run scoreboard players get .loop global

# Add to running sum
function nn:model/pass/add_signal with storage nn:helpers

# Increment loop
scoreboard players add .loop global 1

# If loop hasn't been exceeded, compute next sum operand
$execute if score .loop global < .$(layer)_from global run return run function nn:model/pass/compute_sum_loop with storage nn:helpers

# On last iteration, divide sum by scale factor and set neuron to result
scoreboard players operation .sum global /= .scale global
$scoreboard players operation .$(layer)_$(to) neuron = .sum global