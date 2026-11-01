kill @s

execute as @e[dx=0] run return fail

setblock ~ ~ ~ dropper{CustomName:"Oxygenator"} keep

execute if block ~ ~ ~ #dead_air:replaceable run setblock ~ ~ ~ dropper{CustomName:"Oxygenator"}

execute unless block ~ ~ ~ dropper run execute as @p at @s run function dead_air:oxygenator/give

$execute if block ~ ~ ~ dropper run summon item_display ~0.5 ~0.5 ~0.5 {Tags:["oxygenator_placed"],data:{id:$(oxygenator_id)},item:{id:"stick",components:{item_model:"dead_air:oxygenator_off"}},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[1.001,1.001,1.001],translation:[0,0,0]},brightness:{block:0,sky:15}}

scoreboard players add #oxygenator_id_handler oxygenator_id 1

playsound block.stone.place block @a ~ ~ ~ 1 1 1