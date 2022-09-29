execute as @s[tag=facingEntity] at @s run tp @s ^ ^ ^1.5
execute as @s[tag=!facingEntity] run function elinirweapons:kalympiansentry/direction
execute at @s run particle minecraft:squid_ink ~ ~0.5 ~ 0.3 0.3 0.3 0.02 10
execute at @s positioned ~ ~-0.3 ~ run execute as @e[type=player,distance=..1.5] unless score @s SUID = @e[tag=airay,limit=1,sort=nearest] SUID run scoreboard players set @s hp_dmg 4
execute at @s positioned ~ ~-0.3 ~ run execute as @e[type=!player,distance=..1.5,type=!#minecraft:undead_mobs,type=!#minecraft:non_mobs] unless score @s SUID = @e[type=!player,tag=airay,limit=1,sort=nearest] SUID run effect give @s minecraft:absorption 1 1 true
execute at @s positioned ~ ~-0.3 ~ run execute as @e[type=!player,distance=..1.5,type=!#minecraft:undead_mobs,type=!#minecraft:non_mobs] unless score @s SUID = @e[type=!player,tag=airay,limit=1,sort=nearest] SUID run effect give @s minecraft:instant_damage 1 1 true
execute at @s positioned ~ ~-0.3 ~ run execute as @e[distance=..1.5,type=#minecraft:undead_mobs] run effect give @s minecraft:absorption 1 1 true
execute at @s positioned ~ ~-0.3 ~ run execute as @e[distance=..1.5,type=#minecraft:undead_mobs] run effect give @s minecraft:instant_health 2 1 true
execute at @s positioned ~ ~-0.3 ~ run execute as @e[type=!#minecraft:non_mobs,distance=..1.5,tag=!undead] unless score @s SUID = @e[tag=airay,limit=1,sort=nearest] SUID run kill @e[tag=airay,limit=1,sort=nearest]
execute at @s if block ~ ~0.3 ~ #minecraft:solid_blocks run kill @s
execute at @s if entity @e[type=#minecraft:undead_mobs,distance=..1.5] run kill @s