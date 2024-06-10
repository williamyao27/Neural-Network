# Runs an evaluation of the most recent prediction of the model. If this is the last prediction of the current report cycle, save the results and start a new one.

# Increment number of elapsed predictions
scoreboard players add .predictions_this_report metric 1

# Check whether or not the prediction is correct
function nn:target/print_truth
$execute if score .argmax global matches $(target) run function nn:train/evaluation/correct with storage nn:helpers
$execute unless score .argmax global matches $(target) run function nn:train/evaluation/incorrect

# If this is the last prediction in the current cycle, save and start a new one
execute if score .predictions_this_report metric < .predictions_per_report metric run return 0
function nn:train/evaluation/save_report with storage nn:helpers
function nn:train/evaluation/start_report