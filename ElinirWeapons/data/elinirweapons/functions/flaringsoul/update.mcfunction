

execute as @s[tag=activatedray] at @s run tp @s ^ ^ ^0.15
execute as @s[tag=activatedray] run execute as @e[type=!#minecraft:non_mobs,distance=..1.1,sort=nearest,limit=1] unless score @s SUID = @e[tag=circlewand,limit=1,sort=nearest] SUID run particle poof ~ ~ ~ 1 1 1 0.5 35
execute as @s[tag=activatedray] run execute as @e[type=!#minecraft:non_mobs,distance=..1.1,sort=nearest,limit=1] unless score @s SUID = @e[tag=circlewand,limit=1,sort=nearest] SUID run kill @e[tag=circlewand,limit=1,sort=nearest]
execute as @s[tag=activatedray] at @s run particle minecraft:flame ~ ~0.5 ~ 0.5 0.5 0.5 0.0001 40
execute as @s at @s run particle minecraft:soul ~ ~0.5 ~ 0.1 0.1 0.1 0.1 1

execute as @s[tag=!activatedray] at @s run particle minecraft:flame ~ ~0.5 ~ 0.01 0.01 0.01 0.01 20
execute at @s[tag=!activatedray,scores={ageRay=10..}] run execute as @e[type=!#minecraft:non_mobs,tag=!ray,distance=..32] unless score @s SUID = @e[tag=circlewand,limit=1,sort=nearest] SUID run execute as @e[tag=circlewand,limit=1,sort=nearest] run function elinirweapons:flaringsoul/activateaggro