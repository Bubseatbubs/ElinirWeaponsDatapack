execute at @s[tag=active] as @e[type=!#minecraft:non_mobs,distance=..12.5] run function elinirweapons:voltrune/gravity
execute as @s at @s positioned ~ ~0.6 ~ run particle minecraft:portal ~ ~0.5 ~ 1.2 1.2 1.2 0.01 10

execute as @s[tag=!active,nbt={Motion:[0.0,0.0,0.0]}] run tag @s add active
execute as @s[tag=active] run tp @s ~ ~ ~ ~5 ~
execute at @s[scores={waitTime=15..}] as @e[distance=..3,tag=!ray,type=!#minecraft:non_mobs] at @s run summon minecraft:lightning_bolt ~ ~-1 ~
execute as @s[scores={waitTime=3..}] at @s positioned ~ ~0.6 ~ run particle minecraft:enchant ~ ~1 ~ -0.1 -0.1 -0.1 1 10 normal
execute as @s[scores={waitTime=3..}] at @s positioned ~ ~0.6 ~ run particle minecraft:enchant ~ ~1 ~ 6 6 6 10 35 normal

execute as @s[scores={waitTime=15..}] at @s positioned ~ ~0.6 ~ run function elinirweapons:voltrune/particles
execute as @s[scores={waitTime=15..}] at @s positioned ~ ~0.6 ~ rotated ~90 ~ run function elinirweapons:voltrune/particles
execute as @s[scores={waitTime=15..}] at @s positioned ~ ~0.6 ~ rotated ~180 ~ run function elinirweapons:voltrune/particles
execute as @s[scores={waitTime=15..}] at @s positioned ~ ~0.6 ~ rotated ~270 ~ run function elinirweapons:voltrune/particles

