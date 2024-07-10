# Compute exponentiation for a positive exponent

# First, find how many times ln(2) can be removed from the exponent, which represents the increment of the
# smallest integer factor we can extract for this computation.
scoreboard players operation .double euler = .exponent euler
scoreboard players operation .double euler /= .ln2 constant

scoreboard players operation .deduct euler = .double euler
scoreboard players operation .deduct euler *= .ln2 constant
scoreboard players operation .exponent euler -= .deduct euler

# Compute factors for each increment of the exponent
$function nn:math/e/deduct_exponent {var:$(var),obj:$(obj),increment:1000,sign:"+"}
$function nn:math/e/deduct_exponent {var:$(var),obj:$(obj),increment:100,sign:"+"}
$function nn:math/e/deduct_exponent {var:$(var),obj:$(obj),increment:10,sign:"+"}
$function nn:math/e/deduct_exponent {var:$(var),obj:$(obj),increment:1,sign:"+"}

# Double loop
$execute if score .double euler matches 1.. run function nn:math/e/double_loop {var:$(var),obj:$(obj)}