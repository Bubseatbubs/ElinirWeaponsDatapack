execute at @s anchored eyes run summon armor_stand ^ ^ ^1 {Motion:[0.0,1.0,0.0],Invulnerable:1b,Small:1b,Invisible:1b,Tags:["explodingray","ray","explodeinit"],ArmorItems:[{},{},{},{id:"minecraft:purple_shulker_box",Count:1b}]}
execute at @s as @e[tag=explodeinit,limit=1,sort=nearest] at @s rotated as @p run function elinirweapons:caskblaster/launch
execute at @s run scoreboard players operation @e[tag=explodingray,tag=!facingPlayer,distance=..2,limit=1] SUID = @s SUID
execute as @e[tag=explodingray,tag=!facingPlayer,distance=..2,limit=1] run scoreboard players get @s SUID 
scoreboard players set @s CD_ExplodingRay 150
execute at @s run playsound minecraft:entity.egg.throw player @a[distance=..2.5] ~ ~ ~ 1.0 0.5 1.0
execute at @s run playsound minecraft:entity.firework_rocket.launch player @a[distance=..2.5] ~ ~ ~ 1.0 0.8 1.0
scoreboard players reset @s rightClick