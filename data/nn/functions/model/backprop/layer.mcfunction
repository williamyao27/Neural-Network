$data merge storage nn:helpers {layer:$(layer)}
$data merge storage nn:helpers {prev_layer:$(prev_layer)}
$data merge storage nn:helpers {error:$(error)}
function nn:model/backprop/update_parameters