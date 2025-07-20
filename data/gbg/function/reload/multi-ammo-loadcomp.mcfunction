#initialising
execute store result storage fp.multi_ammo_cycle ammo_type_count int 1 run data get entity @s SelectedItem.components.minecraft:custom_data.gbg.multi_ammo_item_tags
data modify storage fp.multi_ammo_cycle ammo_base set from entity @s SelectedItem.components.minecraft:custom_data.gbg.ammo_base
scoreboard players set @s fp.multi_ammo_index 0
execute store result storage fp.multi_ammo_cycle multi_ammo_index int 1 run scoreboard players get @s fp.multi_ammo_index
scoreboard players set @s fp.multi_ammo_tag_found 0
data modify storage fp.multi_ammo_cycle found_tag set value ""
function gbg:reload/multi-ammo-loadcomp-init with storage fp.multi_ammo_cycle

#start loop
return run function gbg:reload/multi-ammo-loop with storage fp.multi_ammo_cycle
