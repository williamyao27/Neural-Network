# Wrapper function to build a bar in the bar graph based on the value of neuron j in the given layer.

# Store bar length
$scoreboard players operation .temp global = .$(layer)_$(j) neuron
scoreboard players operation .temp global /= .bar_scale_divisor constant
execute store result storage nn:helpers bar_length int 1.0 run scoreboard players get .temp global

# Build bar
function nn:model/display/bar_graph/build_bar with storage nn:helpers