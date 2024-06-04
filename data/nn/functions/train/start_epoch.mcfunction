# Sets the target amount of training iterations. Note that once this function is used with a number of iterations
# larger than the currently elapsed number, the model will immediately begin training.

# Reset iteration counter for this epoch
scoreboard players set .iterations_this_epoch train 0

# Start new epoch
function nn:model/backprop/start_batch
scoreboard players add .epochs train 1
scoreboard players set .create_loader_class_loop global 0
function nn:train/loader/create_class_loop

# Start report cycles for epoch
function nn:evaluation/start_report