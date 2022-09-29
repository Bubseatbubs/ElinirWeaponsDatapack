execute at @s anchored eyes run summon armor_stand ~ ~-0.86 ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["rayshoot","nonMob","init"],ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],CustomName:'{"text":"Kalympian Turret","color":"gold"}'}
execute at @s run scoreboard players set @s CD_RayShoot 500
execute at @s run playsound minecraft:block.anvil.place player @a[distance=..2.5] ~ ~ ~ 1.0 2.0 1.0
execute at @s anchored eyes run summon armor_stand ~ ~-1.40 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["rayshootpart","nonMob"],ArmorItems:[{},{},{},{id:"minecraft:netherite_block",Count:1b}]}
execute at @s anchored eyes run summon armor_stand ~-.6 ~-1.76 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["rayshootpart","nonMob"],ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1b}]}
execute at @s anchored eyes run summon armor_stand ~.6 ~-1.76 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["rayshootpart","nonMob"],ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1b}]}
execute at @s anchored eyes run summon armor_stand ~ ~-1.76 ~.6 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["rayshootpart","nonMob"],ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1b}]}
execute at @s anchored eyes run summon armor_stand ~ ~-1.76 ~-.6 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["rayshootpart","nonMob"],ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1b}]}
execute at @s run scoreboard players operation @e[tag=rayshoot,tag=init] SUID = @s SUID
execute at @s run scoreboard players set @e[tag=rayshoot,sort=nearest,limit=1] CD_TraceWand 35
tag @e[tag=rayshoot,distance=..2] remove init
scoreboard players reset @a[scores={rightClick=1..}] rightClick
