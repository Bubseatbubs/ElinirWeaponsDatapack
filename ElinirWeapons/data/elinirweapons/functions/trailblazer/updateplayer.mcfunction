execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:"block air",Age:2147483647,Tags:["trailblazer","ray","init"]}
execute at @s run scoreboard players operation @e[tag=trailblazer,tag=init,distance=..2,limit=6,sort=nearest] SUID = @s SUID
tag @e[tag=trailblazer,tag=init,distance=..2,limit=6,sort=nearest] remove init
effect give @s speed 1 0 true
scoreboard players add @s waitTime 1

execute as @e[scores={waitTime=99..}] run kill @e[tag=dash,distance=1.5..]

execute as @s at @s run playsound minecraft:block.fire.ambient player @a[distance=..2.5] ~ ~ ~ 0.3 1 0.1
execute as @s run effect give @s minecraft:resistance 1 1 true

execute as @s[scores={waitTime=100..}] run function elinirweapons:trailblazer/resetplayer

execute at @s run particle minecraft:flame ~ ~ ~ 0.5 0.1 0.5 0.01 10
execute at @s run particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0.01 10
execute at @s run particle minecraft:cloud ~ ~2 ~ 0.1 0.1 0.1 0.05 1