# This function uses a hard-coded scale factor.

# $execute store result storage nn:weights $(layer)_$(to)_$(from) float 0.001 run random value -1000..1000
$data merge storage nn:weights {$(layer)_$(to)_$(from):1.0}