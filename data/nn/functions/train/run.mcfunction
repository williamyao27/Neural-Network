# Performs stochastic gradient descent using a randomly sampled training exampled.
# This function is run on every tick but does nothing if there are no training iterations left.

scoreboard players set .train_iterations_limit global 0

# Cancel training if no iterations are left
execute if score .train_iterations global >= .train_iterations_limit global run return fail

# Sample (with replacement) a random example image from the dataset for this iteration
execute store result storage nn:helpers example_class int 1.0 run random value 0..9
execute store result storage nn:helpers example_index int 1.0 run random value 0..999

# Load selected example
function nn:train/load with storage nn:helpers

# Run backprop
function nn:model/backprop/run

# Increment elapsed testing iterations
scoreboard players add .train_iterations global 1