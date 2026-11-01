execute store result score @s oxygenator_temp_incrementer7 run data get block ~ ~ ~ Items[6].components."minecraft:custom_data".oxygen 1

execute if score @s oxygenator_temp_incrementer7 matches ..11999 run scoreboard players add @s oxygenator_temp_incrementer7 1

execute store result block ~ ~ ~ Items[6].components."minecraft:custom_data".oxygen int 1 run scoreboard players get @s oxygenator_temp_incrementer7

function dead_air:oxygenator/slots/rewrite_lore7 with block ~ ~ ~ Items[6].components."minecraft:custom_data"
