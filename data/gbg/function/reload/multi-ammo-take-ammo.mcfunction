#remove one of the item
$clear @s $(ammo_base)[custom_data~{$(found_tag):1b}] 1
#[EXPERIMENTAL] ammo modifier
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{ammo_modifications:[{}]}] run function gbg:reload/multi-ammo-modifier-init with storage fp.multi_ammo_cycle
return 0