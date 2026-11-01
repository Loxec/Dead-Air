# OXYGEN SYSTEM
execute store result score @s current_gas_mask_oxygen_level run data get entity @s equipment.head.components."minecraft:custom_data".oxygen 1
execute store result score @s gas_mask_minus_oxygen run data get entity @s equipment.head.components."minecraft:custom_data".oxygen 1

# decrementation only if not in oxygenated zone
execute if entity @s[tag=!in_oxygenated_zone] if score @s current_gas_mask_oxygen_level matches 1.. run scoreboard players remove @s current_gas_mask_oxygen_level 1

# incrementation if in oxygenated zone

execute if score @s player_gas_mask_timer matches 5.. if score @s current_gas_mask_oxygen_level matches ..11999 run scoreboard players add @s current_gas_mask_oxygen_level 1

# displaying
title @s actionbar [{"score":{name:"@s","objective":"current_gas_mask_oxygen_level"},"color":"blue"},{"text":"mB O2 Left in the mask","color":"white"}]

# storing info to apply oxygen
$execute store result storage dead_air:temp.$(XpSeed) oxygen_level int 1 run scoreboard players get @s current_gas_mask_oxygen_level
$execute store result storage dead_air:temp.$(XpSeed) oxygen_level_minus int 1 run scoreboard players get @s gas_mask_minus_oxygen
$data merge storage dead_air:temp.$(XpSeed) {UUID:$(XpSeed)}

$function dead_air:check_before_apply_oxygen with storage dead_air:temp.$(XpSeed)