tag @a add see_infected_air

item replace entity @a[tag=!given] armor.head with leather_helmet[lore=[{"text":"Can only be removed in survival","color":"dark_aqua"},{"text":"6000mB 02"}],unbreakable={},item_model="dead_air:gas_mask",item_name="Gas Mask",equippable={slot:"head",asset_id:"dead_air:hazmat",dispensable:true,swappable:true,equip_on_interact:true,equip_sound:"intentionally_empty"},custom_data={gas_mask:1b,oxygen:12000}]

tag @a add given

execute unless entity @e[type=marker,tag=spawn_point_marker] run function dead_air:summon_spawn_point_marker

scoreboard objectives add current_gas_mask_oxygen_level dummy {"text":"CurrentGasMaskOxygenLevel"}
scoreboard players add @a current_gas_mask_oxygen_level 0

scoreboard objectives add gas_mask_minus_oxygen dummy {"text":"GasMaskMinusOxygen"}
scoreboard players add @a gas_mask_minus_oxygen 0

scoreboard objectives add player_gas_mask_timer dummy {"text": "PlayerGasMaskTimer"}
scoreboard players add @a player_gas_mask_timer 0

scoreboard objectives add da_scan_timer dummy {"text": "AirFilterScanTimer"}
scoreboard objectives add da_open dummy {"text": "AirFilterOpen"}
scoreboard objectives add da_flood_count dummy {"text": "AirFilterFloodCount"}

scoreboard objectives add air_filter_id dummy {"text":"AirFilterId"}
scoreboard players add #air_filter_id_handler air_filter_id 1

scoreboard objectives add oxygenator_id dummy {"text":"OxygenatorId"}
scoreboard players add #oxygenator_id_handler oxygenator_id 1

scoreboard objectives add oxygenator_temp_incrementer1 dummy {"text":"OxygenatorTempIncrementer1"}
scoreboard objectives add oxygenator_temp_incrementer2 dummy {"text":"OxygenatorTempIncrementer2"}
scoreboard objectives add oxygenator_temp_incrementer3 dummy {"text":"OxygenatorTempIncrementer3"}
scoreboard objectives add oxygenator_temp_incrementer4 dummy {"text":"OxygenatorTempIncrementer4"}
scoreboard objectives add oxygenator_temp_incrementer5 dummy {"text":"OxygenatorTempIncrementer5"}
scoreboard objectives add oxygenator_temp_incrementer6 dummy {"text":"OxygenatorTempIncrementer6"}
scoreboard objectives add oxygenator_temp_incrementer7 dummy {"text":"OxygenatorTempIncrementer7"}
scoreboard objectives add oxygenator_temp_incrementer8 dummy {"text":"OxygenatorTempIncrementer8"}
scoreboard objectives add oxygenator_temp_incrementer9 dummy {"text":"OxygenatorTempIncrementer9"}