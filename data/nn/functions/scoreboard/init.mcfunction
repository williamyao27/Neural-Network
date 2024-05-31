# Create objectives
scoreboard objectives remove global
scoreboard objectives add global dummy
scoreboard objectives setdisplay sidebar global

scoreboard objectives remove neuron
scoreboard objectives add neuron dummy

scoreboard objectives remove weight
scoreboard objectives add weight dummy

scoreboard objectives remove bias
scoreboard objectives add bias dummy

scoreboard objectives remove target
scoreboard objectives add target dummy

scoreboard objectives remove gradient
scoreboard objectives add gradient dummy

# Set helper variables
scoreboard players set .e_1000 global 2718
scoreboard players set .e_100 global 1105
scoreboard players set .e_10 global 1010
scoreboard players set .e_1 global 1001
scoreboard players set .scale global 1000
scoreboard players set .loop global 0
scoreboard players set .loop1 global 0
scoreboard players set .loop2 global 0
scoreboard players set .sum global 0
scoreboard players set .temp global 0

# Set model hyperparameters
scoreboard players set .learning_rate global 100
scoreboard players set .img_x global 28
scoreboard players set .img_y global 28
scoreboard players set .hidden1_from global 784
scoreboard players set .hidden1_to global 32
scoreboard players set .hidden2_from global 32
scoreboard players set .hidden2_to global 16
scoreboard players set .output_from global 16
scoreboard players set .output_to global 10