# Load example
$execute positioned 0 0 0 run function nn:dataset/$(digit)/build_0

# Forward pass
function nn:model/forward_pass/run

# Print predictions
function nn:model/forward_pass/print_output