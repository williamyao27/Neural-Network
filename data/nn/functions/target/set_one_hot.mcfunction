# Initialize loop
scoreboard players set .loop global 0

# Initiate target setting loop
function nn:target/zero_loop

# Set one-hot target to the global scale factor
$scoreboard players operation .target_$(class) target = .scale global