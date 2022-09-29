execute at @s run particle minecraft:witch ~ ~ ~ 0.5 0.5 0.5 0.1 30
execute at @s run particle minecraft:campfire_signal_smoke ~ ~ ~ 0.5 0.5 0.5 0.1 5
execute at @s run execute as @e[type=!#minecraft:non_mobs,tag=!ray,distance=..32] unless score @s SUID = @e[tag=circlewand,limit=1,sort=nearest] SUID run tp @e[tag=circlewand,limit=1,sort=nearest] ~ ~ ~ facing entity @s feet
execute at @s run playsound minecraft:entity.enderman.teleport player @a[distance=..33] ~ ~ ~ 0.3 1.0 0.2
execute at @s run playsound minecraft:entity.blaze.death player @a[distance=..33] ~ ~ ~ 0.3 1.0 0.2
execute at @s run playsound minecraft:entity.ghast.death player @a[distance=..33] ~ ~ ~ 0.2 0.5 0.2
tag @s add activatedray