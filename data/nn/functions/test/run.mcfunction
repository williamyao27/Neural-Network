# Performs forward pass using a randomly sampled test example.
# This function is run on every tick but does nothing if there are no loader markers left.

# Cancel testing if no markers are left
execute unless entity @e[type=marker,tag=test_loader,limit=1] run return fail

# Sample (without replacement) the example image associated with a random loader for this iteration
execute as @e[type=marker,tag=test_loader,limit=1,sort=random] run function nn:test/loader/load with entity @s data

# Run forward pass
function nn:model/forward_pass/run

# Evaluate the model's prediction
function nn:test/evaluation/run with storage nn:helpers

# Increment elapsed iterations
scoreboard players add .iterations test 1