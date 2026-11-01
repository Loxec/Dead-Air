summon minecraft:marker ~ ~ ~ {Tags:["da_air_flood"]}
scoreboard players add @s da_flood_count 1
execute if score @s da_flood_count matches 2048.. run scoreboard players set @s da_open 1

execute if score @s da_open matches 0 positioned ~1 ~ ~ if function dead_air:air_filter/is_passable unless entity @e[type=minecraft:marker,tag=da_air_flood,distance=..0.1] run function dead_air:air_filter/scan
execute if score @s da_open matches 0 positioned ~-1 ~ ~ if function dead_air:air_filter/is_passable unless entity @e[type=minecraft:marker,tag=da_air_flood,distance=..0.1] run function dead_air:air_filter/scan
execute if score @s da_open matches 0 positioned ~ ~1 ~ if function dead_air:air_filter/is_passable unless entity @e[type=minecraft:marker,tag=da_air_flood,distance=..0.1] run function dead_air:air_filter/scan
execute if score @s da_open matches 0 positioned ~ ~-1 ~ if function dead_air:air_filter/is_passable unless entity @e[type=minecraft:marker,tag=da_air_flood,distance=..0.1] run function dead_air:air_filter/scan
execute if score @s da_open matches 0 positioned ~ ~ ~1 if function dead_air:air_filter/is_passable unless entity @e[type=minecraft:marker,tag=da_air_flood,distance=..0.1] run function dead_air:air_filter/scan
execute if score @s da_open matches 0 positioned ~ ~ ~-1 if function dead_air:air_filter/is_passable unless entity @e[type=minecraft:marker,tag=da_air_flood,distance=..0.1] run function dead_air:air_filter/scan
