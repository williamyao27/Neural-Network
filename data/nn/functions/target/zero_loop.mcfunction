# Zero the class given by the current loop index
execute store result storage nn:helpers j int 1.0 run scoreboard players get .target_zero_loop global
function nn:target/zero with storage nn:helpers

# Increment loop
scoreboard players add .target_zero_loop global 1

# If loop hasn't been exceeded, keep zeroing labels
execute if score .target_zero_loop global < .output_to global run function nn:target/zero_loop