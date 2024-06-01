# Runs a forward pass on a randomly sampled test point.
# This function is run on every tick but does nothing if there are no testing iterations left.

return fail

# Cancel testing if no iterations are left
execute if score .test_iterations global >= .test_iterations_limit global run return fail

# Sample (with replacement) a random example image from the dataset for this iteration
execute store result storage nn:helpers example_class int 1.0 run random value 0..9
execute store result storage nn:helpers example_index int 1.0 run random value 0..999

# Load selected example
function nn:test/load with storage nn:helpers

# Run forward pass only
function nn:model/forward_pass/run

# Increment elapsed testing iterations
scoreboard players add .test_iterations global 1