execute at @s positioned ~ ~-0.5 ~ anchored eyes run summon minecraft:armor_stand ^-0.5 ^ ^0.6 {Pose:{LeftArm:[270f,0f,0f]},Invulnerable:1b,Small:0b,NoGravity:1,Glowing:0b,NoBasePlate:1,Invisible:1b,Marker:1,Tags:["sword1","swordshoot","ray"],ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:diamond_sword",Count:1b},{}]}
execute at @s positioned ~ ~-0.5 ~ anchored eyes run summon minecraft:armor_stand ^0.5 ^ ^0.6 {Pose:{LeftArm:[270f,0f,0f]},Invulnerable:1b,Small:0b,NoGravity:1,Glowing:0b,NoBasePlate:1,Invisible:1b,Marker:1,Tags:["sword2","swordshoot","ray"],ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:diamond_sword",Count:1b},{}]}
execute at @s positioned ~ ~-0.5 ~ anchored eyes run summon minecraft:armor_stand ^0.75 ^ ^0.5 {Pose:{LeftArm:[270f,0f,0f]},Invulnerable:1b,Small:0b,NoGravity:1,Glowing:0b,NoBasePlate:1,Invisible:1b,Marker:1,Tags:["sword3","swordshoot","ray"],ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:diamond_sword",Count:1b},{}]}
execute at @s positioned ~ ~-0.5 ~ anchored eyes run summon minecraft:armor_stand ^-0.75 ^ ^0.5 {Pose:{LeftArm:[270f,0f,0f]},Invulnerable:1b,Small:0b,NoGravity:1,Glowing:0b,NoBasePlate:1,Invisible:1b,Marker:1,Tags:["sword4","swordshoot","ray"],ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:diamond_sword",Count:1b},{}]}
execute at @s positioned ~ ~-0.5 ~ anchored eyes run summon minecraft:armor_stand ^ ^ ^0.7 {Pose:{LeftArm:[270f,0f,0f]},Invulnerable:1b,Small:0b,NoGravity:1,Glowing:0b,NoBasePlate:1,Invisible:1b,Marker:1,Tags:["sword5","swordshoot","ray"],ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:diamond_sword",Count:1b},{}]}
scoreboard players set @s CD_SwordShoot 250
execute at @s run playsound minecraft:item.trident.throw player @a[distance=..8] ~ ~ ~ 1 1 0.8
execute at @s run playsound minecraft:item.crossbow.shoot player @a[distance=..8] ~ ~ ~ 1 1.5 0.8
scoreboard players reset @s rightClick
execute at @s run scoreboard players operation @e[tag=swordshoot,tag=!facingPlayer,distance=..2] SUID = @s SUID
execute as @e[tag=swordshoot,distance=..2] if score @p SUID = @s SUID at @s rotated as @p run tp @s ~ ~ ~ ~ ~
execute as @e[tag=sword2,tag=!facingPlayer] at @s run tp @s ~ ~ ~ ~180 ~
execute as @e[tag=sword3,tag=!facingPlayer] at @s run tp @s ~ ~ ~ ~-180 ~
execute as @e[tag=sword4,tag=!facingPlayer] at @s run tp @s ~ ~ ~ ~90 ~
execute as @e[tag=sword5,tag=!facingPlayer] at @s run tp @s ~ ~ ~ ~-90 ~
tag @e[tag=swordshoot,tag=!facingPlayer] add facingPlayer