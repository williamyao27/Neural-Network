# Initializes all scoreboard objectives and variables, including model hyperparameters but excluding model parameters.

# Create objectives
scoreboard objectives remove global
scoreboard objectives add global dummy
scoreboard objectives setdisplay sidebar global

scoreboard objectives remove constant
scoreboard objectives add constant dummy

scoreboard objectives remove euler
scoreboard objectives add euler dummy

scoreboard objectives remove settings
scoreboard objectives add settings dummy

scoreboard objectives remove hyperparameter
scoreboard objectives add hyperparameter dummy

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

scoreboard objectives remove metric
scoreboard objectives add metric dummy

scoreboard objectives remove settings
scoreboard objectives add settings dummy

# Global variables
scoreboard players set .scale global 1000
scoreboard players set .create_neuron_loop global 0
scoreboard players set .create_neuron_loop_y global 0
scoreboard players set .input_neuron_j global 0
scoreboard players set .create_parameter_loop_from global 0
scoreboard players set .create_parameter_loop_to global 0
scoreboard players set .load_parameter_loop_from global 0
scoreboard players set .load_parameter_loop_to global 0
scoreboard players set .save_parameter_loop_from global 0
scoreboard players set .save_parameter_loop_to global 0
scoreboard players set .forward_pass_sum_loop_from global 0
scoreboard players set .target_zero_loop global 0
scoreboard players set .backprop_parameter_loop_from global 0
scoreboard players set .backprop_parameter_loop_to global 0
scoreboard players set .sum global 0
scoreboard players set .temp global 0

# Min/max variables
scoreboard players set .max_loop global 0
scoreboard players set .min_loop global 0
scoreboard players set .argmax global -1
scoreboard players set .max global -2147483647
scoreboard players set .argmin global -1
scoreboard players set .min global 2147483647
scoreboard players set .max_min_diff global 0

# Train/test metric variables
scoreboard players set .train_iterations global 0
scoreboard players set .train_iterations_limit global 0
scoreboard players set .test_iterations global 0
scoreboard players set .test_iterations_limit global 0

# Constant variables
scoreboard players set .-1 constant -1
scoreboard players set .1 constant 1
scoreboard players set .2 constant 2
scoreboard players set .10 constant 10
scoreboard players set .100 constant 100
scoreboard players set .ln2 constant 693
scoreboard players set .max_bar_length constant 20

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
function nn:scoreboard/set_hyperparameters