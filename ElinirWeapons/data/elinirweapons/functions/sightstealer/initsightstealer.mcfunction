execute at @s anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^0.1 {Particle:"block air",Age:2147483647,Tags:["blindray","ray"]}
execute at @s run scoreboard players operation @e[tag=blindray,tag=!facingPlayer,distance=..2] SUID = @s SUID
execute as @s run scoreboard players set @s CD_BlindRay 125
execute at @s run playsound minecraft:block.beacon.deactivate player @a[distance=..2.5] ~ ~ ~ 1.0 2.0 1.0
execute at @s run playsound minecraft:entity.bee.death player @a[distance=..2.5] ~ ~ ~ 1.0 0.5 1.0
execute as @e[tag=blindray,tag=!facingPlayer] at @s run tp @s ~ ~ ~ facing entity @p eyes
tag @e[tag=blindray,tag=!facingPlayer] add facingPlayer
scoreboard players reset @a[scores={rightClick=1..}] rightClick