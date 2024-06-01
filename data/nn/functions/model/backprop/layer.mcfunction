$data merge storage nn:helpers {layer:$(layer)}
$data merge storage nn:helpers {prev_layer:$(prev_layer)}
function nn:model/backprop/update_parameters