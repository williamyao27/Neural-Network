# Sets the target amount of training iterations. Note that once this function is used with a number of iterations
# larger than the currently elapsed number, the model will immediately begin training.

$scoreboard players set .train_iterations_limit global $(iterations)