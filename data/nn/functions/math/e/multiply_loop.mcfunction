# Multiplies the running product by the corresponding factor the specified number of times.

# Multiply given variable by the given constant of e
$scoreboard players operation $(var) $(obj) *= .e_$(sign)$(increment) constant
$scoreboard players operation $(var) $(obj) /= .scale global

# Loop
$scoreboard players remove .factors_$(increment) euler 1
$execute if score .factors_$(increment) euler matches 1.. run function nn:math/e/multiply_loop {var:$(var),obj:$(obj),increment:$(increment),sign:$(sign)}