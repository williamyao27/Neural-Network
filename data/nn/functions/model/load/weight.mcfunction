# This function uses a hard-coded scale factor.

# Get weight from storage with scale factor
$execute store result score .$(layer)_$(to)_$(from) weight run data get storage nn:weights $(layer)_$(to)_$(from) 1000