#These commands run every tick

## Sneak Detection
#when sneaking
execute as @s[scores={gbg.sneak=1..}] run function gbg:sneak/gbg_sneak
#when not sneaking
execute as @s[scores={gbg.sneak=0}] run function gbg:sneak/gbg_no_sneak

## ACTIONBAR INDICATORS
execute if score actionbar_reloading_appears config.gbg matches 0 as @s[scores={gbg.cooldown=0..,gbg.reloading_time=1..}] run function gbg:gun/display_cooldown_timer

## WEAPON AND ITEM COOLDOWNS
# Shooting Cooldown
scoreboard players remove @s[scores={gbg.cooldown=1..}] gbg.cooldown 1

## BURST
execute as @s[scores={gbg.burst_duration=2},nbt={SelectedItem:{id:"minecraft:crossbow"}}] at @s anchored eyes run function gbg:gun/shoot

#MUST BE AT END
#RESETING RC AND SHIFT SCOREBOARDS
scoreboard players reset @s[scores={gbg.rc=1..}] gbg.rc
scoreboard players set @s[scores={gbg.sneak=1..}] gbg.sneak 0
scoreboard players remove @s[scores={gbg.burst_duration=1..}] gbg.burst_duration 1
scoreboard players remove @s[scores={gbg.is_using=1..}] gbg.is_using 1
