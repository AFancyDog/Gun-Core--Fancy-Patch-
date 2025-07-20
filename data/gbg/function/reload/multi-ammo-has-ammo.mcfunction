#check if you have the ammo
$execute if items entity @s container.* minecraft:$(ammo_base)[minecraft:custom_data={$(current_ammo_tag):1b}] run return 1
$execute if items entity @s weapon.* minecraft:$(ammo_base)[minecraft:custom_data={$(current_ammo_tag):1b}] run return 1
return 0