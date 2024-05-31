# Computes an approximation of e^var_exp and stores it in var_dest. Works for var_exp up to around e^14.55 (or in scoreboard form, e^14550)

# Initialize exponent loop by setting it to the given exponent
$scoreboard players operation .exponent euler = $(var_exp) $(obj_exp)

# Initialize the destination with the value 1.000, equal to e^0
$scoreboard players operation $(var_dest) $(obj_dest) = .scale global

# Multiply into the destination variable
$execute if score .exponent euler matches 1.. run return run function nn:math/e/compute_positive {var:$(var_dest),obj:$(obj_dest)}
$execute if score .exponent euler matches ..-1 run function nn:math/e/compute_negative {var:$(var_dest),obj:$(obj_dest)}