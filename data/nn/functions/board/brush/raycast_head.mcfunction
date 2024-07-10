# Triggers the brush raycast.

# Reset brush raycast
scoreboard players set @s raycast 0
execute anchored eyes positioned ^ ^ ^ run function nn:board/brush/raycast

# Decrement brush timer
scoreboard players remove @s brush 1