#more initialisation
$scoreboard players set @s fp.multi_ammo_length $(ammo_type_count)
data modify storage fp.multi_ammo_cycle multi_ammo_index set value 0
data modify storage minecraft:fp.multi_ammo_cycle weapon_item_id set from entity @s SelectedItem.id