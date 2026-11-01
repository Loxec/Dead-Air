## SCOREBOARDS
scoreboard players add #air_filter_scan da_scan_timer 1
execute if score #air_filter_scan da_scan_timer matches 20.. run function dead_air:air_filter/scan_players
execute if score #air_filter_scan da_scan_timer matches 20.. run scoreboard players set #air_filter_scan da_scan_timer 0

scoreboard players add @a player_gas_mask_timer 1

execute store result storage dead_air:config air_filter_id int 1 run scoreboard players get #air_filter_id_handler air_filter_id
execute store result storage dead_air:config oxygenator_id int 1 run scoreboard players get #oxygenator_id_handler oxygenator_id

## AS

execute as @a at @s run function dead_air:as/as_player

execute as @e at @s run function dead_air:as/as_entities

## CUSTOM BLOCKS

execute as @e[tag=air_filter] at @s align xyz run function dead_air:air_filter/place with storage dead_air:config
execute as @e[tag=air_filter_placed] at @s unless block ~ ~ ~ stone run function dead_air:air_filter/break
execute as @e[tag=air_filter_placed] at @s run function dead_air:air_filter/tick

execute as @e[tag=oxygenator] at @s align xyz run function dead_air:oxygenator/place with storage dead_air:config
execute as @e[tag=oxygenator_placed] at @s unless block ~ ~ ~ dropper run function dead_air:oxygenator/break
execute as @e[tag=oxygenator_placed] at @s run function dead_air:oxygenator/tick