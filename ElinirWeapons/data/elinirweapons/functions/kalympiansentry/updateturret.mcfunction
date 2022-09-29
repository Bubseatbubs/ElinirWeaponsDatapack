execute as @s[tag=!aggro] at @s run teleport @s ~ ~ ~ ~3 ~
execute as @s[tag=!aggro] run scoreboard players set @s rightClick 0
execute at @s as @e[distance=..9,type=!#minecraft:non_mobs,tag=!ray] unless score @e[tag=rayshoot,limit=1,sort=nearest] SUID = @s SUID run execute as @e[tag=rayshoot,limit=1,sort=nearest] run function elinirweapons:kalympiansentry/aggro
execute as @s[scores={rightClick=1..,CD_TraceWand=0}] at @s run function elinirweapons:kalympiansentry/shoot