# Starts a single pass of the testing dataset.

# Reset counters
scoreboard players set .iterations test 0
scoreboard players set .correct_test metric 0

# Create loaders
scoreboard players set .create_loader_class_loop global 0
function nn:test/loader/create_class_loop