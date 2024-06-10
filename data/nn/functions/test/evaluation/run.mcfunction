# Runs an evaluation of the most recent test prediction of the model.

# Check whether or not the prediction is correct
function nn:target/print_truth
$execute if score .argmax global matches $(target) run function nn:test/evaluation/correct with storage nn:helpers
$execute unless score .argmax global matches $(target) run function nn:test/evaluation/incorrect