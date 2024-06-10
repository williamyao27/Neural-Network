# Triggers effects related to the model achieving a correct prediction.

# Increment correct counter
scoreboard players add .correct_test metric 1

# Print
tellraw @a [{"text":"Correct.","color":"green"}]