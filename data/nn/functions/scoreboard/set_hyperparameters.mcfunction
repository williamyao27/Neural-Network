# Sets the model hyperparameters.

# This function uses a hard-coded scale factor.

scoreboard players set .learning_rate hyperparameter 0
scoreboard players set .learning_rate_frac hyperparameter 100

scoreboard players set .batch_size hyperparameter 10
scoreboard players set .batch_size_divisor hyperparameter 0
scoreboard players set .batch_size_divisor_frac hyperparameter 1000

scoreboard players set .img_x hyperparameter 28
scoreboard players set .img_y hyperparameter 28

scoreboard players set .hidden1_from hyperparameter 784
scoreboard players set .hidden1_to hyperparameter 64
scoreboard players set .hidden1_init hyperparameter 3000

scoreboard players set .output_from hyperparameter 64
scoreboard players set .output_to hyperparameter 10
scoreboard players set .output_init hyperparameter 5000