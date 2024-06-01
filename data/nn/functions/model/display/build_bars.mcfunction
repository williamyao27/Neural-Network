# Rebuilds the bar graph to display the normalized output of the model.

# Note that this function is hard-coded to the MNIST problem, i.e. whereas other functions in this datapack
# can adapt to different numbers of neurons in the output layer, the printed summary assumes a 10-digit classification problem.

# Erase current bar graph.
execute store result storage nn:helpers max_bar_length int 1.0 run scoreboard players get .max_bar_length constant
execute positioned 31 0 0 run function nn:model/display/erase_bars with storage nn:helpers

# Build bars
execute positioned 31 27 0 run function nn:model/display/build_bar_wrapper {layer:"output",j:0}
execute positioned 31 24 0 run function nn:model/display/build_bar_wrapper {layer:"output",j:1}
execute positioned 31 21 0 run function nn:model/display/build_bar_wrapper {layer:"output",j:2}
execute positioned 31 18 0 run function nn:model/display/build_bar_wrapper {layer:"output",j:3}
execute positioned 31 15 0 run function nn:model/display/build_bar_wrapper {layer:"output",j:4}
execute positioned 31 12 0 run function nn:model/display/build_bar_wrapper {layer:"output",j:5}
execute positioned 31 9 0 run function nn:model/display/build_bar_wrapper {layer:"output",j:6}
execute positioned 31 6 0 run function nn:model/display/build_bar_wrapper {layer:"output",j:7}
execute positioned 31 3 0 run function nn:model/display/build_bar_wrapper {layer:"output",j:8}
execute positioned 31 0 0 run function nn:model/display/build_bar_wrapper {layer:"output",j:9}