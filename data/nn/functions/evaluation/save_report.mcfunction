# Saves the current metrics report.

# Build bar
$scoreboard players operation .temp global = .correct_$(report) metric
scoreboard players operation .temp global /= .5 constant
execute store result storage nn:helpers bar_length int 1.0 run scoreboard players get .temp global
execute positioned -2 30 0 run function nn:evaluation/bar_graph/build_bar with storage nn:helpers