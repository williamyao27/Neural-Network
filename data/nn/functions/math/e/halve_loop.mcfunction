# Halves the running product the specified number of times.

$scoreboard players operation $(var) $(obj) /= .2 constant

# Loop
scoreboard players remove .halve euler 1
$execute if score .halve euler matches 1.. run function nn:math/e/halve_loop {var:$(var),obj:$(obj)}