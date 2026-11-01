execute if block ~ ~ ~ #dead_air:air_passable run return 1
execute if block ~ ~ ~ #dead_air:air_permeable_doors run return 1
execute if block ~ ~ ~ #minecraft:doors[open=true] run return 1
execute if block ~ ~ ~ #minecraft:trapdoors[open=true] run return 1
return fail
