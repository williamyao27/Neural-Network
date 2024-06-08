# Raycast function for brush

# If this hits a wall, paint it
execute unless block ~ ~ ~ air run return run function nn:board/brush/paint

# Recursive call
scoreboard players add @s raycast 1
execute if score @s raycast matches ..200 positioned ^ ^ ^0.4 run function nn:board/brush/raycast