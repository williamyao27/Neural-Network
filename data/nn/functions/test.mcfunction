scoreboard players set .a global 1
scoreboard players set .a_frac global 5000
scoreboard players set .b global 1
scoreboard players set .b_frac global 5000
function nn:math/multiply {var1:".a",obj1:"global",var2:".b",obj2:"global"}
tellraw @a [{"text":"2.25 / "},{"score":{"name":".a","objective":"global"},"color":"gold","bold":true},{"text":" "},{"score":{"name":".a_frac","objective":"global"},"color":"gold","bold":true}]

scoreboard players set .a global 1
scoreboard players set .a_frac global 5000
scoreboard players set .b global -1
scoreboard players set .b_frac global -5000
function nn:math/multiply {var1:".a",obj1:"global",var2:".b",obj2:"global"}
tellraw @a [{"text":"-2.25 / "},{"score":{"name":".a","objective":"global"},"color":"gold","bold":true},{"text":" "},{"score":{"name":".a_frac","objective":"global"},"color":"gold","bold":true}]

scoreboard players set .a global 1
scoreboard players set .a_frac global 5000
scoreboard players set .b global 0
scoreboard players set .b_frac global -2000
function nn:math/multiply {var1:".a",obj1:"global",var2:".b",obj2:"global"}
tellraw @a [{"text":"-0.3 / "},{"score":{"name":".a","objective":"global"},"color":"gold","bold":true},{"text":" "},{"score":{"name":".a_frac","objective":"global"},"color":"gold","bold":true}]

scoreboard players set .a global 15
scoreboard players set .a_frac global 8000
scoreboard players set .b global 4
scoreboard players set .b_frac global 9000
function nn:math/multiply {var1:".a",obj1:"global",var2:".b",obj2:"global"}
tellraw @a [{"text":"77.42 / "},{"score":{"name":".a","objective":"global"},"color":"gold","bold":true},{"text":" "},{"score":{"name":".a_frac","objective":"global"},"color":"gold","bold":true}]

scoreboard players set .a global -15
scoreboard players set .a_frac global -8000
scoreboard players set .b global -4
scoreboard players set .b_frac global -9000
function nn:math/multiply {var1:".a",obj1:"global",var2:".b",obj2:"global"}
tellraw @a [{"text":"77.42 / "},{"score":{"name":".a","objective":"global"},"color":"gold","bold":true},{"text":" "},{"score":{"name":".a_frac","objective":"global"},"color":"gold","bold":true}]

scoreboard players set .a global 1
scoreboard players set .a_frac global 5000
scoreboard players set .b global 1
scoreboard players set .b_frac global 5000
function nn:math/add {var1:".a",obj1:"global",var2:".b",obj2:"global"}
tellraw @a [{"text":"3 / "},{"score":{"name":".a","objective":"global"},"color":"gold","bold":true},{"text":" "},{"score":{"name":".a_frac","objective":"global"},"color":"gold","bold":true}]

scoreboard players set .a global 1
scoreboard players set .a_frac global 9000
scoreboard players set .b global 1
scoreboard players set .b_frac global 9000
function nn:math/add {var1:".a",obj1:"global",var2:".b",obj2:"global"}
tellraw @a [{"text":"3.8 / "},{"score":{"name":".a","objective":"global"},"color":"gold","bold":true},{"text":" "},{"score":{"name":".a_frac","objective":"global"},"color":"gold","bold":true}]

scoreboard players set .a global 0
scoreboard players set .a_frac global 1000
scoreboard players set .b global 0
scoreboard players set .b_frac global -2000
function nn:math/add {var1:".a",obj1:"global",var2:".b",obj2:"global"}
tellraw @a [{"text":"-0.1 / "},{"score":{"name":".a","objective":"global"},"color":"gold","bold":true},{"text":" "},{"score":{"name":".a_frac","objective":"global"},"color":"gold","bold":true}]

scoreboard players set .a global 1
scoreboard players set .a_frac global 1000
scoreboard players set .b global 0
scoreboard players set .b_frac global -2000
function nn:math/add {var1:".a",obj1:"global",var2:".b",obj2:"global"}
tellraw @a [{"text":"0.9 / "},{"score":{"name":".a","objective":"global"},"color":"gold","bold":true},{"text":" "},{"score":{"name":".a_frac","objective":"global"},"color":"gold","bold":true}]

scoreboard players set .a global -1
scoreboard players set .a_frac global 0
scoreboard players set .b global 0
scoreboard players set .b_frac global 2000
function nn:math/add {var1:".a",obj1:"global",var2:".b",obj2:"global"}
tellraw @a [{"text":"-0.8 / "},{"score":{"name":".a","objective":"global"},"color":"gold","bold":true},{"text":" "},{"score":{"name":".a_frac","objective":"global"},"color":"gold","bold":true}]

scoreboard players set .a global 1
scoreboard players set .a_frac global 5000
scoreboard players set .b global 1
scoreboard players set .b_frac global 5000
function nn:math/subtract {var1:".a",obj1:"global",var2:".b",obj2:"global"}
tellraw @a [{"text":"0 / "},{"score":{"name":".a","objective":"global"},"color":"gold","bold":true},{"text":" "},{"score":{"name":".a_frac","objective":"global"},"color":"gold","bold":true}]

scoreboard players set .a global 0
scoreboard players set .a_frac global 1000
scoreboard players set .b global 0
scoreboard players set .b_frac global -2000
function nn:math/subtract {var1:".a",obj1:"global",var2:".b",obj2:"global"}
tellraw @a [{"text":"0.3 / "},{"score":{"name":".a","objective":"global"},"color":"gold","bold":true},{"text":" "},{"score":{"name":".a_frac","objective":"global"},"color":"gold","bold":true}]

scoreboard players set .a global 0
scoreboard players set .a_frac global -1000
scoreboard players set .b global 0
scoreboard players set .b_frac global -2000
function nn:math/subtract {var1:".a",obj1:"global",var2:".b",obj2:"global"}
tellraw @a [{"text":"0.1 / "},{"score":{"name":".a","objective":"global"},"color":"gold","bold":true},{"text":" "},{"score":{"name":".a_frac","objective":"global"},"color":"gold","bold":true}]

scoreboard players set .a global -1
scoreboard players set .a_frac global 0
scoreboard players set .b global 0
scoreboard players set .b_frac global 2000
function nn:math/subtract {var1:".a",obj1:"global",var2:".b",obj2:"global"}
tellraw @a [{"text":"-1.2 / "},{"score":{"name":".a","objective":"global"},"color":"gold","bold":true},{"text":" "},{"score":{"name":".a_frac","objective":"global"},"color":"gold","bold":true}]

scoreboard players set .a global -2
scoreboard players set .a_frac global -4839
scoreboard players set .b global 3
scoreboard players set .b_frac global 6671
function nn:math/multiply {var1:".a",obj1:"global",var2:".b",obj2:"global"}
tellraw @a [{"text":"-9.1088 / "},{"score":{"name":".a","objective":"global"},"color":"gold","bold":true},{"text":" "},{"score":{"name":".a_frac","objective":"global"},"color":"gold","bold":true}]