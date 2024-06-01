# Start index loop
execute store result storage nn:helpers class int 1.0 run scoreboard players get .create_loader_class_loop global
scoreboard players set .create_loader_index_loop global 0
function nn:train/loader/create_index_loop with storage nn:helpers

# Increment loop
scoreboard players add .create_loader_class_loop global 1

# If loop hasn't been exceeded, start next index loop
execute if score .create_loader_class_loop global < .train_classes dataset run function nn:train/loader/create_class_loop