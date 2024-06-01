$data merge storage nn:helpers {layer:$(layer)}
$execute as @e[type=marker,tag=$(layer)] run function nn:model/save/neuron_parameters