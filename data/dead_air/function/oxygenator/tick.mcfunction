execute if items block ~ ~ ~ container.* leather_helmet run data modify entity @n[tag=oxygenator_placed,limit=1] item.components."minecraft:item_model" set value "dead_air:oxygenator_on"
execute unless items block ~ ~ ~ container.* leather_helmet run data modify entity @n[tag=oxygenator_placed,limit=1] item.components."minecraft:item_model" set value "dead_air:oxygenator_off"

function dead_air:oxygenator/slots/process_slot_1
function dead_air:oxygenator/slots/process_slot_2
function dead_air:oxygenator/slots/process_slot_3
function dead_air:oxygenator/slots/process_slot_4
function dead_air:oxygenator/slots/process_slot_5
function dead_air:oxygenator/slots/process_slot_6
function dead_air:oxygenator/slots/process_slot_7
function dead_air:oxygenator/slots/process_slot_8
function dead_air:oxygenator/slots/process_slot_9