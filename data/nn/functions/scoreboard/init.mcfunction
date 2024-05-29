# Create objectives
scoreboard objectives remove global
scoreboard objectives add global dummy
scoreboard objectives setdisplay sidebar global
scoreboard objectives remove weight
scoreboard objectives add weight dummy

# Set hyperparameters
scoreboard players set .img_x global 28
scoreboard players set .img_y global 28
scoreboard players set .fc1_in global 784
scoreboard players set .fc1_out global 128
scoreboard players set .fc2_in global 128
scoreboard players set .fc2_out global 64
scoreboard players set .fc3_in global 64
scoreboard players set .fc3_out global 10