$execute if data storage fp.multi_ammo_cycle gun_mod_reset_data[$(multi_ammo_index)]."damage" run item modify entity @s weapon.mainhand gbg:gun_stat_resets/damage
$execute if data storage fp.multi_ammo_cycle gun_mod_reset_data[$(multi_ammo_index)]."range" run item modify entity @s weapon.mainhand gbg:gun_stat_resets/range
$execute if data storage fp.multi_ammo_cycle gun_mod_reset_data[$(multi_ammo_index)]."fire_rate" run item modify entity @s weapon.mainhand gbg:gun_stat_resets/fire_rate
$execute if data storage fp.multi_ammo_cycle gun_mod_reset_data[$(multi_ammo_index)]."projectile_type" run item modify entity @s weapon.mainhand gbg:gun_stat_resets/projectile_type
$execute if data storage fp.multi_ammo_cycle gun_mod_reset_data[$(multi_ammo_index)]."projectile_speed" run item modify entity @s weapon.mainhand gbg:gun_stat_resets/projectile_speed
$execute if data storage fp.multi_ammo_cycle gun_mod_reset_data[$(multi_ammo_index)]."damage_type" run item modify entity @s weapon.mainhand gbg:gun_stat_resets/damage_type
$execute if data storage fp.multi_ammo_cycle gun_mod_reset_data[$(multi_ammo_index)]."zoom_strength" run item modify entity @s weapon.mainhand gbg:gun_stat_resets/zoom_strength
$execute if data storage fp.multi_ammo_cycle gun_mod_reset_data[$(multi_ammo_index)]."recoil_strength" run item modify entity @s weapon.mainhand gbg:gun_stat_resets/recoil_strength
$execute if data storage fp.multi_ammo_cycle gun_mod_reset_data[$(multi_ammo_index)]."zoom_recoil_strength" run item modify entity @s weapon.mainhand gbg:gun_stat_resets/zoom_recoil_strength
$execute if data storage fp.multi_ammo_cycle gun_mod_reset_data[$(multi_ammo_index)]."max_ammo" run item modify entity @s weapon.mainhand gbg:gun_stat_resets/max_ammo
$execute if data storage fp.multi_ammo_cycle gun_mod_reset_data[$(multi_ammo_index)]."reload_speed" run item modify entity @s weapon.mainhand gbg:gun_stat_resets/reload_speed
$data modify storage fp.multi_ammo_cycle ammo_modifications set from storage fp.multi_ammo_cycle gun_mod_reset_data[$(multi_ammo_index)]
item modify entity @s weapon.mainhand gbg:ammo_modification
