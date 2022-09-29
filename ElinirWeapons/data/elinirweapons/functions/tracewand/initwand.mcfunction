execute at @s anchored eyes run summon area_effect_cloud ^ ^ ^1 {Particle:"block air",Age:2147483647,Tags:["tracewand","ray"]}
execute at @s run scoreboard players operation @e[tag=tracewand,tag=!facingPlayer,distance=..2,limit=1] SUID = @s SUID
scoreboard players set @s CD_TraceWand 100
execute at @s run playsound minecraft:item.firecharge.use player @a[distance=..2.5] ~ ~ ~ 1.0 2.0 1.0
scoreboard players reset @s rightClick
execute as @e[tag=tracewand,tag=!facingPlayer] at @s run tp @s ~ ~ ~ facing entity @p eyes
tag @e[tag=tracewand,tag=!facingPlayer] add facingPlayer