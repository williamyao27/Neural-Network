# Starts a new metrics report.

scoreboard players set .predictions_this_report metric 0
scoreboard players add .report metric 1
execute store result storage nn:helpers report int 1.0 run scoreboard players get .report metric
function nn:evaluation/reset_correct_count with storage nn:helpers