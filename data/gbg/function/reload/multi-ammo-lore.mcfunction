$say lore check cycle $(multi_ammo_lore_cycle)
$say max cycle $(ammo_type_count)
$data modify storage fp.multi_ammo_cycle string_two set from entity @s SelectedItem.components.minecraft:custom_data.gbg.multi_ammo_item_tags[$(multi_ammo_lore_cycle)]
execute unless score @s fp.multi_ammo_lore matches 0 run data modify storage fp.multi_ammo_cycle separator set value ","
function gbg:reload/multi-ammo-string-merge with storage fp.multi_ammo_cycle


scoreboard players add @s fp.multi_ammo_lore 1
execute store result storage fp.multi_ammo_cycle multi_ammo_lore_cycle int 1 run scoreboard players get @s fp.multi_ammo_lore
$execute if score @s fp.multi_ammo_lore matches $(ammo_type_count) run return 1
function gbg:reload/multi-ammo-lore with storage fp.multi_ammo_cycle