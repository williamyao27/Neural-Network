# Divides var1 obj1 by var2 obj2. Ideally this should use the scale factor, but we will use x100 both ways as empirically this hits the ceiling of the scoreboard less frequently.

$scoreboard players operation .temp global = $(var2) $(obj2)
scoreboard players operation .temp global /= .100 constant
$scoreboard players operation $(var1) $(obj1) *= .100 constant
$scoreboard players operation $(var1) $(obj1) /= .temp global