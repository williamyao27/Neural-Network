# This function uses a hard-coded scale factor.

# Use specific type of initialization (google!)
$execute store result storage nn:weights $(layer)_$(to)_$(from) float 0.001 run random value -100..100