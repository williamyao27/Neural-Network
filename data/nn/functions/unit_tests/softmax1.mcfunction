scoreboard players set .output_0 neuron 8886
scoreboard players set .output_1 neuron 8729
scoreboard players set .output_2 neuron 21365
scoreboard players set .output_3 neuron 25029
scoreboard players set .output_4 neuron 37769
scoreboard players set .output_5 neuron 28054
scoreboard players set .output_6 neuron 27327
scoreboard players set .output_7 neuron 32262
scoreboard players set .output_8 neuron 23476
scoreboard players set .output_9 neuron 42125

function nn:math/activation/softmax/layer {layer:"output"}

tellraw @a [{"text":"0: "},{"score":{"name":".output_0","objective":"neuron"},"color":"gold","bold":true}]
tellraw @a [{"text":"1: "},{"score":{"name":".output_1","objective":"neuron"},"color":"gold","bold":true}]
tellraw @a [{"text":"2: "},{"score":{"name":".output_2","objective":"neuron"},"color":"gold","bold":true}]
tellraw @a [{"text":"3: "},{"score":{"name":".output_3","objective":"neuron"},"color":"gold","bold":true}]
tellraw @a [{"text":"4: "},{"score":{"name":".output_4","objective":"neuron"},"color":"gold","bold":true}]
tellraw @a [{"text":"5: "},{"score":{"name":".output_5","objective":"neuron"},"color":"gold","bold":true}]
tellraw @a [{"text":"6: "},{"score":{"name":".output_6","objective":"neuron"},"color":"gold","bold":true}]
tellraw @a [{"text":"7: "},{"score":{"name":".output_7","objective":"neuron"},"color":"gold","bold":true}]
tellraw @a [{"text":"8: "},{"score":{"name":".output_8","objective":"neuron"},"color":"gold","bold":true}]
tellraw @a [{"text":"9: "},{"score":{"name":".output_9","objective":"neuron"},"color":"gold","bold":true}]