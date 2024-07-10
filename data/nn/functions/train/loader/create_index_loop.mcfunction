# Creates a loader for the current index of the current class.

# Create loader
execute store result storage nn:helpers index int 1.0 run scoreboard players get .create_loader_index_loop global
function nn:train/loader/create with storage nn:helpers

# Increment loop
scoreboard players add .create_loader_index_loop global 1

# If loop hasn't been exceeded, create next loader
execute if score .create_loader_index_loop global < .train_examples_per_class dataset run function nn:train/loader/create_index_loop