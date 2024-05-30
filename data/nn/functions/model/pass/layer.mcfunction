$data merge storage nn:helpers {layer:$(layer)}
$data merge storage nn:helpers {prev_layer:$(prev_layer)}
$execute as @e[type=marker,tag=$(layer)] run function nn:model/pass/compute_sum