# Store current node whose sum is being computed
execute store result storage nn:helpers to int 1.0 run data get entity @s data.j

# Initialize loop and sum
scoreboard players set .loop global 0
scoreboard players set .sum global 0

# Begin sum computation
function nn:model/pass/compute_sum_loop with storage nn:helpers