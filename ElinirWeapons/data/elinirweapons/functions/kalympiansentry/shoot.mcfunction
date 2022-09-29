execute at @s anchored eyes run summon minecraft:area_effect_cloud ^ ^-0.05 ^0.35 {Particle:"block air",Age:2147483647,Tags:["ray","airay","init"]}
execute at @s run scoreboard players operation @e[tag=airay,tag=init] SUID = @s SUID
tag @e[tag=airay,tag=init] remove init
execute at @s run playsound minecraft:item.trident.riptide_3 player @a[distance=..16] ~ ~ ~ 1.0 2.0 1.0
execute at @s run playsound minecraft:block.note_block.bit player @a[distance=..16] ~ ~ ~ 1.0 2.0 1.0
scoreboard players set @s CD_TraceWand 35
scoreboard players reset @s rightClicks