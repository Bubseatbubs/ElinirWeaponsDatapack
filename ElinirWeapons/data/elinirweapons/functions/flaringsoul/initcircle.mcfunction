execute at @s anchored eyes run summon minecraft:armor_stand ^ ^ ^1 {Invulnerable:1b,Small:1b,NoBasePlate:1,Invisible:1b,Marker:1,Tags:["circlewand","ray"],ArmorItems:[{},{},{},{}]}
execute at @s run scoreboard players operation @e[tag=circlewand,tag=!facingPlayer,distance=..2] SUID = @s SUID
execute at @s run scoreboard players set @a CD_Circle 600
execute at @s run playsound minecraft:item.totem.use player @a[distance=..2.5] ~ ~ ~ 0.1 2.0 0.1
tag @s add actyi
scoreboard players reset @a[scores={rightClick=1..}] rightClick

