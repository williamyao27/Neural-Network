# Compute exponentiation for a negative exponent.

# Since the exponent is negative, flip it so that the loop is a positive amount
scoreboard players operation .exponent euler *= .-1 constant

# First, find how many times ln(1/2) can be removed from the exponent, which represents the increment of the
# smallest integer factor we can extract for this computation.
scoreboard players operation .halve euler = .exponent euler
scoreboard players operation .halve euler /= .ln2 constant

scoreboard players operation .deduct euler = .halve euler
scoreboard players operation .deduct euler *= .ln2 constant
scoreboard players operation .exponent euler -= .deduct euler

# Compute factors for each increment of the exponent
$function nn:math/e/deduct_exponent {var:$(var),obj:$(obj),increment:1000,sign:"-"}
$function nn:math/e/deduct_exponent {var:$(var),obj:$(obj),increment:100,sign:"-"}
$function nn:math/e/deduct_exponent {var:$(var),obj:$(obj),increment:10,sign:"-"}
$function nn:math/e/deduct_exponent {var:$(var),obj:$(obj),increment:1,sign:"-"}

# Double loop
$execute if score .halve euler matches 1.. run function nn:math/e/halve_loop {var:$(var),obj:$(obj)}