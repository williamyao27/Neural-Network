# Multiplies var2 obj2 into var1 obj1 using int and frac components.

# This function uses a hard-coded scale factor.

scoreboard players set .multiply math 0
scoreboard players set .multiply_frac math 0

# Multiply int components
$scoreboard players operation .temp global = $(var1) $(obj1)
$scoreboard players operation .temp global *= $(var2) $(obj2)
scoreboard players operation .multiply math += .temp global

# Multiply frac by int component
$scoreboard players operation .temp global = $(var1)_frac $(obj1)
$scoreboard players operation .temp global *= $(var2) $(obj2)
scoreboard players operation .multiply_frac math += .temp global

# Multiply int by frac component
$scoreboard players operation .temp global = $(var2)_frac $(obj2)
$scoreboard players operation .temp global *= $(var1) $(obj1)
scoreboard players operation .multiply_frac math += .temp global

# Multiply frac components
$scoreboard players operation .temp global = $(var1)_frac $(obj1)
$scoreboard players operation .temp global *= $(var2)_frac $(obj2)
scoreboard players operation .temp global /= .scale global
scoreboard players operation .multiply_frac math += .temp global

## Set value
# Int
$scoreboard players operation $(var1) $(obj1) = .multiply_frac math
$scoreboard players operation $(var1) $(obj1) /= .scale global
$scoreboard players operation $(var1) $(obj1) += .multiply math
# Frac
scoreboard players operation .multiply_frac math %= .scale global
$scoreboard players operation $(var1)_frac $(obj1) = .multiply_frac math
# If frac and int component of result differ in sign, rebalance
$execute if score $(var1) $(obj1) matches 1.. if score $(var1)_frac $(obj1) matches ..-1 run return run function nn:math/rebalance_pos_int {var:$(var1),obj:$(obj1)}
$execute if score $(var1) $(obj1) matches ..-1 if score $(var1)_frac $(obj1) matches 1.. run return run function nn:math/rebalance_neg_int {var:$(var1),obj:$(obj1)}