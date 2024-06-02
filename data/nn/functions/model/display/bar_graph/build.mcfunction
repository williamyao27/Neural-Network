# Rebuilds the bar graph to display the normalized output of the model.

# Note that this function is hard-coded to the MNIST problem, i.e. whereas other functions in this datapack
# can adapt to different numbers of neurons in the output layer, the printed summary assumes a 10-digit classification problem.

# Erase current bar graph
function nn:model/display/bar_graph/erase_wrapper

# Build bars
execute positioned 30 27 0 run function nn:model/display/bar_graph/build_bar_wrapper {layer:"output",j:0}
execute positioned 30 24 0 run function nn:model/display/bar_graph/build_bar_wrapper {layer:"output",j:1}
execute positioned 30 21 0 run function nn:model/display/bar_graph/build_bar_wrapper {layer:"output",j:2}
execute positioned 30 18 0 run function nn:model/display/bar_graph/build_bar_wrapper {layer:"output",j:3}
execute positioned 30 15 0 run function nn:model/display/bar_graph/build_bar_wrapper {layer:"output",j:4}
execute positioned 30 12 0 run function nn:model/display/bar_graph/build_bar_wrapper {layer:"output",j:5}
execute positioned 30 9 0 run function nn:model/display/bar_graph/build_bar_wrapper {layer:"output",j:6}
execute positioned 30 6 0 run function nn:model/display/bar_graph/build_bar_wrapper {layer:"output",j:7}
execute positioned 30 3 0 run function nn:model/display/bar_graph/build_bar_wrapper {layer:"output",j:8}
execute positioned 30 0 0 run function nn:model/display/bar_graph/build_bar_wrapper {layer:"output",j:9}