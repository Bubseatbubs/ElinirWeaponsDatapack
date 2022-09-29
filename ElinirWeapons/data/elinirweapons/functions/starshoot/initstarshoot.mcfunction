execute at @s anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^0.1 {Particle:"block air",Age:2147483647,Tags:["starshoot","ray"]}
execute at @s run scoreboard players operation @e[tag=starshoot,tag=!facingPlayer,distance=..2] SUID = @s SUID
scoreboard players set @s CD_StarShoot 270
execute at @s run playsound minecraft:block.respawn_anchor.charge player @a[distance=..2.5] ~ ~ ~ 1.0 2 1.0
execute at @s run playsound minecraft:entity.experience_orb.pickup player @a[distance=..2.5] ~ ~ ~ 0.5 2 0.5
execute at @s run playsound minecraft:entity.firework_rocket.large_blast player @a[distance=..2.5] ~ ~ ~ 0.5 1 0.5
execute at @s run playsound minecraft:entity.creeper.primed player @a[distance=..2.5] ~ ~ ~ 0.5 2 0.5
scoreboard players reset @s rightClick
execute as @e[tag=starshoot,tag=!facingPlayer] at @s run tp @s ~ ~ ~ facing entity @e[sort=nearest,limit=1,type=!#minecraft:non_mobs] eyes
tag @e[tag=starshoot,tag=!facingPlayer] add facingPlayer