# If no iterations left, cancel training
execute if score .train_iterations global matches 0 run return fail

# Choose random example image from dataset for this iteration
execute store result storage nn:helpers example_class int 1.0 run random value 0..9
execute store result storage nn:helpers example_index int 1.0 run random value 0..999

# Load selected example
execute positioned 0 0 0 run function nn:train/load with storage nn:helpers

# Backprop
function nn:model/backprop/run

# Print output
function nn:model/forward_pass/print_output

# Decrement remaining training iterations
scoreboard players remove .train_iterations global 1