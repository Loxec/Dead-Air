execute store result score @s oxygenator_temp_incrementer3 run data get block ~ ~ ~ Items[2].components."minecraft:custom_data".oxygen 1

execute if score @s oxygenator_temp_incrementer3 matches ..11999 run scoreboard players add @s oxygenator_temp_incrementer3 1

execute store result block ~ ~ ~ Items[2].components."minecraft:custom_data".oxygen int 1 run scoreboard players get @s oxygenator_temp_incrementer3

function dead_air:oxygenator/slots/rewrite_lore3 with block ~ ~ ~ Items[2].components."minecraft:custom_data"