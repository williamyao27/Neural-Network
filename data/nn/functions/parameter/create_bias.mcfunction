# Initialize bias to 0
# $data merge storage nn:biases {$(layer)_$(to):0f}
$scoreboard players set .$(layer)_$(to) bias 0