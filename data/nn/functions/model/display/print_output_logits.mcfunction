# Prints the pre-activation output of the model's final layer.
# Note that this function is hard-coded to the MNIST problem, i.e. whereas other functions in this datapack
# can adapt to different numbers of neurons in the output layer, the printed summary assumes a 10-digit classification problem.

tellraw @a [{"text":""}]
tellraw @a [{"text":"===== REPORT =====","bold":true}]
tellraw @a [{"text":"Output logits:","color":"yellow"}]
tellraw @a [{"text":"0: ","color":"gold"},{"score":{"name":".output_0","objective":"neuron"},"color":"white"}]
tellraw @a [{"text":"1: ","color":"gold"},{"score":{"name":".output_1","objective":"neuron"},"color":"white"}]
tellraw @a [{"text":"2: ","color":"gold"},{"score":{"name":".output_2","objective":"neuron"},"color":"white"}]
tellraw @a [{"text":"3: ","color":"gold"},{"score":{"name":".output_3","objective":"neuron"},"color":"white"}]
tellraw @a [{"text":"4: ","color":"gold"},{"score":{"name":".output_4","objective":"neuron"},"color":"white"}]
tellraw @a [{"text":"5: ","color":"gold"},{"score":{"name":".output_5","objective":"neuron"},"color":"white"}]
tellraw @a [{"text":"6: ","color":"gold"},{"score":{"name":".output_6","objective":"neuron"},"color":"white"}]
tellraw @a [{"text":"7: ","color":"gold"},{"score":{"name":".output_7","objective":"neuron"},"color":"white"}]
tellraw @a [{"text":"8: ","color":"gold"},{"score":{"name":".output_8","objective":"neuron"},"color":"white"}]
tellraw @a [{"text":"9: ","color":"gold"},{"score":{"name":".output_9","objective":"neuron"},"color":"white"}]