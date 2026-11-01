## FX

execute if entity @s[tag=in_oxygenated_zone] run tag @s remove see_infected_air
execute if entity @s[tag=!in_oxygenated_zone] run tag @s add see_infected_air

execute if entity @s[tag=see_infected_air] as @s at @s run function dead_air:see_infected_air
execute if entity @s[tag=!see_infected_air] run posteffect remove @s dead_air:without_oxygen

## ITEM ERROR CORRECTION

execute if items entity @s weapon.mainhand leather_helmet[custom_data={gas_mask:1b,oxygen:12000s}] run item replace entity @s weapon.mainhand with leather_helmet[lore=[{"text":"Can only be removed in survival","color":"dark_aqua"}],unbreakable={},item_model="dead_air:gas_mask",item_name="Gas Mask",equippable={slot:"head",asset_id:"dead_air:hazmat",dispensable:true,swappable:true,equip_on_interact:true,equip_sound:"intentionally_empty"},custom_data={gas_mask:1b,oxygen:12000}]
execute if items entity @s weapon.offhand leather_helmet[custom_data={gas_mask:1b,oxygen:12000s}] run item replace entity @s weapon.offhand with leather_helmet[lore=[{"text":"Can only be removed in survival","color":"dark_aqua"}],unbreakable={},item_model="dead_air:gas_mask",item_name="Gas Mask",equippable={slot:"head",asset_id:"dead_air:hazmat",dispensable:true,swappable:true,equip_on_interact:true,equip_sound:"intentionally_empty"},custom_data={gas_mask:1b,oxygen:12000}]

## OXYGEN MANAGEMENT

execute if data entity @s {equipment:{head:{components:{"minecraft:custom_data":{gas_mask:1b}}}}} run tag @s add have_gas_mask
execute unless data entity @s {equipment:{head:{components:{"minecraft:custom_data":{gas_mask:1b}}}}} run tag @s remove have_gas_mask

### DO NOTHING IF IN WATER BECAUSE THERE IS NO AIR IN WATER
execute if predicate dead_air:is_in_water run return fail

execute if entity @s[tag=have_gas_mask] run function dead_air:gas_mask_processing with entity @s
execute if entity @s[tag=!have_gas_mask] if entity @s[tag=!in_oxygenated_zone] run function dead_air:as/as_expose_to_toxic_air
execute if items entity @s armor.head leather_helmet[custom_data={gas_mask:1b,oxygen:0}] if entity @s[tag=!in_oxygenated_zone] run function dead_air:as/as_expose_to_toxic_air

## SCOREBOARD

execute if score @s player_gas_mask_timer matches 5.. run scoreboard players set @s player_gas_mask_timer 0