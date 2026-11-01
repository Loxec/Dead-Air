execute if entity @s[type=#dead_air:non_living] run return fail
execute if entity @s[type=player] run return fail

execute if entity @s[tag=!in_oxygenated_zone] run damage @s 1 in_wall by @s