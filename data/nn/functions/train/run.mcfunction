# Performs stochastic gradient descent using a randomly sampled training exampled.
# This function is run on every tick but does nothing if there are no loader markers left.

# Cancel training if no markers are left
execute unless entity @e[type=marker,tag=loader,limit=1] run return fail

# Sample (without replacement) the example image associated with a random loader for this iteration
execute as @e[type=marker,tag=loader,limit=1,sort=random] run function nn:train/loader/load with entity @s data

# Run backprop
function nn:model/backprop/run

# Evaluate the model's prediction
function nn:evaluation/run with storage nn:helpers

# Increment elapsed iterations
scoreboard players add .total_iterations train 1
scoreboard players add .iterations_this_epoch train 1