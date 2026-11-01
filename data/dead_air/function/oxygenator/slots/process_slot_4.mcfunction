execute store result score @s oxygenator_temp_incrementer4 run data get block ~ ~ ~ Items[3].components."minecraft:custom_data".oxygen 1

execute if score @s oxygenator_temp_incrementer4 matches ..11999 run scoreboard players add @s oxygenator_temp_incrementer4 1

execute store result block ~ ~ ~ Items[3].components."minecraft:custom_data".oxygen int 1 run scoreboard players get @s oxygenator_temp_incrementer4

function dead_air:oxygenator/slots/rewrite_lore4 with block ~ ~ ~ Items[3].components."minecraft:custom_data"