$function nn:math/e/multiply {var:$(var),obj:$(obj),increment:$(increment)}

# Loop again if doing so would not exceed the given exponent
$scoreboard players remove .loop global $(increment)
$execute if score .loop global matches $(increment).. run function nn:math/e/compute_loop {var:$(var),obj:$(obj),increment:$(increment)}