$data merge storage nn:helpers {layer:$(layer)}
$data merge storage nn:helpers {prev_layer:$(prev_layer)}
$data merge storage nn:helpers {weight_visualization_threshold:$(weight_visualization_threshold)}
$execute as @e[type=marker,tag=$(layer)] at @s run function nn:model/forward_pass/compute_sum