# Runs the backprop algorithm for the specified layer.

$data merge storage nn:helpers {layer:$(layer)}
$data merge storage nn:helpers {prev_layer:$(prev_layer)}
function nn:model/backprop/update/parameters