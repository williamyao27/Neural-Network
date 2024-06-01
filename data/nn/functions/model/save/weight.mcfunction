# This function uses a hard-coded scale factor.

# Save weight to storage with scale factor
$execute store result storage nn:weights $(layer)_$(to)_$(from) float 0.001 run scoreboard players get .$(layer)_$(to)_$(from) weight