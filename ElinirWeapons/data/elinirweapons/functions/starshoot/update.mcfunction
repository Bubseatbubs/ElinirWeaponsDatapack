execute as @s at @s run tp @s ^ ^ ^-0.85
execute at @s positioned ~ ~-0.3 ~ run execute as @e[type=!#minecraft:undead_mobs,type=!#minecraft:non_mobs,distance=..1.7] unless score @s SUID = @e[tag=starshoot,limit=1,sort=nearest] SUID run function elinirweapons:starshoot/hit
execute at @s positioned ~ ~-0.3 ~ run execute as @e[type=#minecraft:undead_mobs,distance=..1.7] unless score @s SUID = @e[tag=starshoot,limit=1,sort=nearest] SUID run function elinirweapons:starshoot/hitundead
execute as @s at @s run particle ambient_entity_effect ~ ~ ~ 0.2 0.2 0.2 0.5 5
execute as @s at @s run particle firework ~ ~ ~ 0.4 0.4 0.4 0.1 1
execute as @s at @s run particle dust 1 0.984 0.773 1 ~ ~ ~ 0.5 0.1 0.1 0.0001 1
execute as @s at @s run particle dust 0.988 0.941 0.294 1 ~ ~ ~ 0.5 0.1 0.1 0.5 10
execute as @s at @s run particle dust 0.988 0.988 0.988 1 ~ ~ ~ 0.5 0.1 0.1 0.5 50
execute as @s at @s if block ~ ~ ~ #minecraft:solid_blocks run kill @s