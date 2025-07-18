#scheduling itself
schedule function gbg:misc/scoreboard_add 4s replace

#scoreboards
execute as @a unless score @s gbg.id matches 1.. run function gbg:misc/id_add
scoreboard players add @a gbg.cooldown 0
scoreboard players add @e[type=#gbg:monster_player] gbg.behind_cover 0
scoreboard players add @a player_config.gbg.desc_style 0
