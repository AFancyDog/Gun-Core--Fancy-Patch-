advancement revoke @s only gbg:use_red_dye_gun
execute unless score @s gbg.has_respawned matches 1.. run return fail
execute as @p if score @s gbg.cooldown matches ..0 unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{gbg_current_ammo:0}}}}] at @s anchored eyes run function gbg:gun/shoot
