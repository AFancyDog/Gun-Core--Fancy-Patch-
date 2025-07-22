scoreboard players remove @s fp.multi_ammo_index 1
execute store result storage fp.multi_ammo_cycle multi_ammo_index int 1 run scoreboard players get @s fp.multi_ammo_index
data modify storage fp.multi_ammo_cycle gun_mod_reset_data set from entity @s SelectedItem.components.minecraft:custom_data.ammo_modifications
function gbg:reload/multi-ammo-modifier with storage fp.multi_ammo_cycle