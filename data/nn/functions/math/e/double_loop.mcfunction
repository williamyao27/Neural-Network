# Doubles the running product the specified number of times.

$scoreboard players operation $(var) $(obj) *= .2 constant

# Loop
scoreboard players remove .double euler 1
$execute if score .double euler matches 1.. run function nn:math/e/double_loop {var:$(var),obj:$(obj)}