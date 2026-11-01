# argument :  oxygen_level, UUID, oxygen_level_minus

$execute if items entity @s player.cursor leather_helmet[custom_data={gas_mask:1b,oxygen:$(oxygen_level)}] run return fail
$execute if items entity @s player.cursor leather_helmet[custom_data={gas_mask:1b,oxygen:$(oxygen_level_minus)}] run return fail

$execute if items entity @s armor.head leather_helmet[custom_data={gas_mask:1b,oxygen:$(oxygen_level_minus)}] run item replace entity @s armor.head with leather_helmet[lore=[{"text":"Can only be removed in survival","color":"dark_aqua"},{"text":"$(oxygen_level)mB 02"}],unbreakable={},item_model="dead_air:gas_mask",item_name="Gas Mask",equippable={slot:"head",asset_id:"dead_air:hazmat",dispensable:true,swappable:true,equip_on_interact:true,equip_sound:"intentionally_empty"},custom_data={gas_mask:1b,oxygen:$(oxygen_level)}]

$data remove storage dead_air:temp.$(UUID) oxygen_level
$data remove storage dead_air:temp.$(UUID) oxygen_level_minus
$data remove storage dead_air:temp.$(UUID) UUID