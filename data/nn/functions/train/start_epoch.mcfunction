# Start new epoch
function nn:model/backprop/start_batch
scoreboard players add .epochs train 1
scoreboard players set .create_loader_class_loop global 0
function nn:train/loader/create_class_loop

# Start report cycles for epoch
function nn:train/evaluation/start_report