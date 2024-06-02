# Prints the index of the class predicted by the model based on the input.
# This function assumes that the current argmin/argmax values stored in the global scoreboard are up-to-date.

tellraw @a [{"text":""}]
tellraw @a [{"text":"Prediction: "},{"score":{"name":".argmax","objective":"global"},"color":"gold","bold":true}]
tellraw @a [{"text":"Truth: "},{"score":{"name":".targ","objective":"global"},"color":"gold","bold":true}]