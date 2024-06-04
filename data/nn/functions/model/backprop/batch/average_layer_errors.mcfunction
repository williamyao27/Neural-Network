$data merge storage nn:helpers {layer:$(layer)}
$execute as @e[type=marker,tag=$(layer)] at @s run function nn:model/backprop/batch/average_error