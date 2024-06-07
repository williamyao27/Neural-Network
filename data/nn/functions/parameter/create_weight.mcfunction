# Creates the specified weight.

$scoreboard players set .$(layer)_$(to)_$(from) weight 0
$execute store result score .$(layer)_$(to)_$(from)_frac weight run random value -$(initialization_range)..$(initialization_range)
# $scoreboard players set .$(layer)_$(to)_$(from) weight 100