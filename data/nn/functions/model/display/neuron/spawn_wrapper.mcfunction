# Wrapper function to summon an armor stand to display the neuron's value.

execute if score .sum global matches -9999..9999 run data merge storage nn:helpers {color:16777215}
execute if score .sum global matches 10000..19999 run data merge storage nn:helpers {color:11206570}
execute if score .sum global matches 20000..29999 run data merge storage nn:helpers {color:5635925}
execute if score .sum global matches 30000.. run data merge storage nn:helpers {color:65280}
execute if score .sum global matches -19999..-10000 run data merge storage nn:helpers {color:16755370}
execute if score .sum global matches -29999..-20000 run data merge storage nn:helpers {color:16733525}
execute if score .sum global matches ..-30000 run data merge storage nn:helpers {color:16711680}

function nn:model/display/neuron/spawn with storage nn:helpers