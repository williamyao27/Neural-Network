# This function uses hard-coded scale factors. The design of the function relies entirely on the scale factor.

# Reset loop
$scoreboard players operation .loop global = $(var_exp) $(obj_exp)

# Initialize product destination; should equal 1 = e^0
$scoreboard players operation $(var_dest) $(obj_dest) = .scale global

# Loop through increments of exponent in powers of 10
$execute if score .loop global matches 1000.. run function nn:math/e/compute_loop {var:$(var_dest),obj:$(obj_dest),increment:1000}
$execute if score .loop global matches 100.. run function nn:math/e/compute_loop {var:$(var_dest),obj:$(obj_dest),increment:100}
$execute if score .loop global matches 10.. run function nn:math/e/compute_loop {var:$(var_dest),obj:$(obj_dest),increment:10}
$execute if score .loop global matches 1.. run function nn:math/e/compute_loop {var:$(var_dest),obj:$(obj_dest),increment:1}