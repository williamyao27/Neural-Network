# Divides var2 obj2 into var1 obj1, then multiplies by the scale factor. Assumes that var2 obj2 is scaled up by that factor.

$scoreboard players operation $(var1) $(obj1) *= .scale global
$scoreboard players operation $(var1) $(obj1) /= $(var2) $(obj2)
