# Create objectives
scoreboard objectives remove global
scoreboard objectives add global dummy
scoreboard objectives setdisplay sidebar global

scoreboard objectives remove constant
scoreboard objectives add constant dummy

scoreboard objectives remove euler
scoreboard objectives add euler dummy

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

# Global variables
scoreboard players set .scale global 1000
scoreboard players set .loop global 0
scoreboard players set .loop1 global 0
scoreboard players set .loop2 global 0
scoreboard players set .sum global 0
scoreboard players set .temp global 0

# Constant variables
scoreboard players set .-1 constant -1
scoreboard players set .1 constant 1
scoreboard players set .2 constant 2
scoreboard players set .10 constant 10
scoreboard players set .100 constant 100
scoreboard players set .ln2 constant 693

scoreboard players set .e_+100 constant 1105
scoreboard players set .e_+10 constant 1010
scoreboard players set .e_+1 constant 1001
scoreboard players set .e_-100 constant 905
scoreboard players set .e_-10 constant 990
scoreboard players set .e_-1 constant 999

# Euler helper variables
scoreboard players set .exponent euler 0
scoreboard players set .double euler 0
scoreboard players set .halve euler 0
scoreboard players set .factors_100 euler 0
scoreboard players set .factors_10 euler 0
scoreboard players set .factors_1 euler 0
scoreboard players set .deduct euler 0

# Model hyperparameters
scoreboard players set .learning_rate global 50
scoreboard players set .img_x global 28
scoreboard players set .img_y global 28
scoreboard players set .hidden1_from global 784
scoreboard players set .hidden1_to global 32
scoreboard players set .hidden2_from global 32
scoreboard players set .hidden2_to global 16
scoreboard players set .output_from global 16
scoreboard players set .output_to global 10