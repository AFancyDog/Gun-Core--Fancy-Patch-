execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",components:{"minecraft:custom_data":{gbg_is_gun:1b}}}}] at @s run stopsound @a[distance=..16] * item.crossbow.shoot
