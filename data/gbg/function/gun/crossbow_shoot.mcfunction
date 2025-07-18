item modify entity @p weapon.mainhand [{"function":"minecraft:set_components","components":{"minecraft:charged_projectiles":[{"id":"minecraft:dirt",components:{item_name:"GBG Projectile"}}]}}]
schedule function gbg:gun/stopsound 0.03s append
execute as @p if score @s gbg.cooldown matches ..0 unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{gbg_current_ammo:0}}}}] at @s anchored eyes run function gbg:gun/shoot
kill @s
