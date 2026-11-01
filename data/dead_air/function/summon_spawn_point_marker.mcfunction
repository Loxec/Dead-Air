execute as @r at @s run summon marker ~ ~ ~ {Tags:["spawn_point_marker"]}

execute as @e[type=marker,tag=spawn_point_marker] at @s run place template dead_air:statis_chamber