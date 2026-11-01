tag @a remove in_oxygenated_zone
execute as @a at @s if entity @e[type=minecraft:item_display,tag=air_filter_placed,distance=..40] run function dead_air:air_filter/scan_player
