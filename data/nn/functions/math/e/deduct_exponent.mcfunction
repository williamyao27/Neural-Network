# Compute how many times the given exponent increment fits into the current remaining exponent
$scoreboard players operation .factors_$(increment) euler = .exponent euler
$scoreboard players operation .factors_$(increment) euler /= .$(increment) constant

# Deduct the exponent increment * the number of factors associated with this exponent increment from the exponent
$scoreboard players operation .deduct euler = .factors_$(increment) euler
$scoreboard players operation .deduct euler *= .$(increment) constant
scoreboard players operation .exponent euler -= .deduct euler

# Multiply exponent factors
$execute if score .factors_$(increment) euler matches 1.. run function nn:math/e/multiply_loop {var:$(var),obj:$(obj),increment:$(increment),sign:$(sign)}