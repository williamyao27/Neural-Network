# Wrapper function to build a bar in the bar graph based on the value of neuron j in the given layer.

# Store bar length
$execute store result storage nn:helpers bar_length int 1.0 run scoreboard players get .$(layer)_$(j) neuron

# Build bar
function nn:model/display/build_bar with storage nn:helpers