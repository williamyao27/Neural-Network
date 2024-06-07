# Subtracts var2 obj2 from var1 obj1 using int and frac components.

# Subtract int components directly
$scoreboard players operation $(var1) $(obj1) -= $(var2) $(obj2)

# Subtract frac components
$scoreboard players operation $(var1)_frac $(obj1) -= $(var2)_frac $(obj2)

# Overflow/underflow
$execute if score $(var1)_frac $(obj1) >= .scale global run function nn:math/overflow {var:$(var1),obj:$(obj1)}
$execute if score $(var1)_frac $(obj1) <= .scale_neg global run function nn:math/underflow {var:$(var1),obj:$(obj1)}

# If frac and int component of result differ in sign, rebalance
$execute if score $(var1) $(obj1) matches 1.. if score $(var1)_frac $(obj1) matches ..-1 run return run function nn:math/rebalance_pos_int {var:$(var1),obj:$(obj1)}
$execute if score $(var1) $(obj1) matches ..-1 if score $(var1)_frac $(obj1) matches 1.. run return run function nn:math/rebalance_neg_int {var:$(var1),obj:$(obj1)}