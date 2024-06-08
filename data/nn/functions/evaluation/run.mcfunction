# Runs an evaluation of the most recent prediction of the model. If this is the last prediction of the current report cycle, save the results and start a new one.

# Increment number of elapsed predictions
scoreboard players add .predictions_this_report metric 1

# Check whether or not the prediction is correct
function nn:evaluation/print_truth
$execute if score .argmax global matches $(target) run function nn:evaluation/correct with storage nn:helpers
$execute unless score .argmax global matches $(target) run function nn:evaluation/incorrect

# If this is the last prediction in the current cycle, save and start a new one
execute if score .predictions_this_report metric < .predictions_per_report metric run return 0
function nn:evaluation/save_report with storage nn:helpers
function nn:evaluation/start_report