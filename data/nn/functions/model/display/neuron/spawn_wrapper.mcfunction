# Wrapper function to summon an armor stand to display the neuron's value.

execute if score .sum global matches -199..199 run return run function nn:model/display/neuron/spawn {color:16777215}
execute if score .sum global matches 200..599 run return run function nn:model/display/neuron/spawn {color:11206570}
execute if score .sum global matches 600..999 run return run function nn:model/display/neuron/spawn {color:5635925}
execute if score .sum global matches 1000.. run return run function nn:model/display/neuron/spawn {color:65280}
execute if score .sum global matches -599..-200 run return run function nn:model/display/neuron/spawn {color:16755370}
execute if score .sum global matches -999..-600 run return run function nn:model/display/neuron/spawn {color:16733525}
execute if score .sum global matches ..-1000 run return run function nn:model/display/neuron/spawn {color:16711680}