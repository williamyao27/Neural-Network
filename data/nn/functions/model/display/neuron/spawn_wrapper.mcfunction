# Wrapper function to summon an armor stand to display the neuron's value.

execute if score .sum global matches -499..499 run return run function nn:model/display/neuron/spawn {color:16777215}
execute if score .sum global matches 500..1499 run return run function nn:model/display/neuron/spawn {color:11206570}
execute if score .sum global matches 1500..2499 run return run function nn:model/display/neuron/spawn {color:5635925}
execute if score .sum global matches 2500.. run return run function nn:model/display/neuron/spawn {color:65280}
execute if score .sum global matches -1499..-500 run return run function nn:model/display/neuron/spawn {color:16755370}
execute if score .sum global matches -2499..-1500 run return run function nn:model/display/neuron/spawn {color:16733525}
execute if score .sum global matches ..-2500 run return run function nn:model/display/neuron/spawn {color:16711680}