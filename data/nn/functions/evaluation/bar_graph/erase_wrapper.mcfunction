# Wrapper function for erasing the bar graph based on the maximum bar length.

execute store result storage nn:helpers max_bar_length int 1.0 run scoreboard players get .max_bar_length constant
execute positioned -1 31 0 run function nn:evaluation/bar_graph/erase with storage nn:helpers