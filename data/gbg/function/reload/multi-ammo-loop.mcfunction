#check if tag has been found, if it has, end loop and take ammo, if it already went through all tags, end and fail
execute if score @s fp.multi_ammo_tag_found matches 1 run return run function gbg:reload/multi-ammo-take-ammo with storage fp.multi_ammo_cycle
execute if score @s fp.multi_ammo_index = @s fp.multi_ammo_length run return 1
#set the tag thats being looked for to the correct tag, then check if that exists
$data modify storage fp.multi_ammo_cycle current_ammo_tag set from entity @s SelectedItem.components.minecraft:custom_data.gbg.multi_ammo_item_tags[$(multi_ammo_index)]
execute store result score @s fp.multi_ammo_tag_found run function gbg:reload/multi-ammo-has-ammo with storage fp.multi_ammo_cycle
#if it was found, then set the found_tag to the tag that was used
execute if score @s fp.multi_ammo_tag_found matches 1 run data modify storage fp.multi_ammo_cycle found_tag set from storage fp.multi_ammo_cycle current_ammo_tag

scoreboard players add @s fp.multi_ammo_index 1
execute store result storage fp.multi_ammo_cycle multi_ammo_index int 1 run scoreboard players get @s fp.multi_ammo_index

return run function gbg:reload/multi-ammo-loop with storage fp.multi_ammo_cycle