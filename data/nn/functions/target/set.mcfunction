# Sets the target scoreboard to a one-hot vector with the given class being the target.

# Initialize loop
scoreboard players set .target_zero_loop global 0

# Initiate target setting loop
function nn:target/zero_loop

# Set one-hot target to the global scale factor
$scoreboard players operation .target_$(class) target = .scale global

# Save the target class index for metric reporting
$scoreboard players set .targ global $(class)
$data merge storage nn:helpers {target:$(class)}