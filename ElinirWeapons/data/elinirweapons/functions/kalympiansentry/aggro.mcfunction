tag @s add aggro
execute at @s at @e[type=!#minecraft:non_mobs,tag=!ray,distance=..9] unless score @s SUID = @e[type=!#minecraft:non_mobs,tag=!ray,limit=1,sort=nearest] SUID run tag @e[type=!#minecraft:non_mobs,tag=!ray,limit=1,sort=nearest] add target
teleport @s ~ ~ ~ facing entity @e[tag=target,limit=1,sort=nearest] eyes
scoreboard players add @s rightClick 1
execute as @s[scores={rightClick=1..,CD_TraceWand=0}] at @s anchored eyes run function elinirweapons:kalympiansentry/shoot
tag @s remove aggro
tag @e remove target