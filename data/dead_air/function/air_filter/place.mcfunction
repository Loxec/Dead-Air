kill @s

execute as @e[dx=0] run return fail

setblock ~ ~ ~ stone keep

execute if block ~ ~ ~ #dead_air:replaceable run setblock ~ ~ ~ stone

execute unless block ~ ~ ~ stone run execute as @p at @s run function dead_air:air_filter/give

$execute if block ~ ~ ~ stone run summon item_display ~0.5 ~0.5 ~0.5 {Tags:["air_filter_placed"],data:{id:$(air_filter_id)},item:{id:"stick",components:{item_model:"dead_air:air_filter"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[1.001,1.001,1.001],translation:[0,0,0]},brightness:{block:0,sky:15}}

scoreboard players add #air_filter_id_handler air_filter_id 1

playsound block.stone.place block @a ~ ~ ~ 1 1 1