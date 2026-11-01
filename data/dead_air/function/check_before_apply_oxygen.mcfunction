# arguments : UUID, oxygen_level, oxygen_level_minus

$execute unless items entity @s player.cursor leather_helmet[custom_data={gas_mask:1b,oxygen:$(oxygen_level_minus)}] run function dead_air:apply_oxygen with storage dead_air:temp.$(UUID)