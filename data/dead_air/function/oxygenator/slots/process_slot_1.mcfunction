execute store result score @s oxygenator_temp_incrementer1 run data get block ~ ~ ~ Items[0].components."minecraft:custom_data".oxygen 1

execute if score @s oxygenator_temp_incrementer1 matches ..11999 run scoreboard players add @s oxygenator_temp_incrementer1 1

execute store result block ~ ~ ~ Items[0].components."minecraft:custom_data".oxygen int 1 run scoreboard players get @s oxygenator_temp_incrementer1

function dead_air:oxygenator/slots/rewrite_lore1 with block ~ ~ ~ Items[0].components."minecraft:custom_data"