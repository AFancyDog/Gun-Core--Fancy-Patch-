# Figuring out the damage type of the gun
execute store result storage gbg:macro input.damage int 1 run scoreboard players get @s gbg.slowcast.damage
data modify storage gbg:macro input.gun_name set from entity @s CustomName

# Running correct damage function depending on gun damage type
execute if score gbg.damage_type gbg.temp matches 8 positioned ^ ^ ^-0.2 run function gbg:gun/shot/explosion with storage gbg:macro input
execute if score gbg.damage_type gbg.temp matches 9 positioned ^ ^ ^-0.2 run function gbg:gun/shot/safe_explosion with storage gbg:macro input

# Reseting Slowcast
kill @s

