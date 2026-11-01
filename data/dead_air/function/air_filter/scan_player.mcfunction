kill @e[type=minecraft:marker,tag=da_air_flood]
scoreboard players set @s da_open 0
scoreboard players set @s da_flood_count 0
execute align xyz positioned ~0.5 ~0.5 ~0.5 if function dead_air:air_filter/is_passable run function dead_air:air_filter/scan
kill @e[type=minecraft:marker,tag=da_air_flood]
execute if score @s da_open matches 0 if score @s da_flood_count matches 1.. run tag @s add in_oxygenated_zone
