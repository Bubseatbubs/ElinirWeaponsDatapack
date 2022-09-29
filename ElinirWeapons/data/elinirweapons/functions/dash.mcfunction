tag @s add superDash
execute at @s run tp @s ~ ~ ~ ~ 0
execute at @s run particle minecraft:dust 0.29 0.078 0.533 4 ~ ~ ~ 0.5 0.5 0.5 1.0 10 normal
execute at @s unless block ^ ^ ^1 #minecraft:solid_blocks run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Tags:["dashSkill"],Pose:{LeftArm:[36f,0f,0f],RightArm:[297f,0f,0f],LeftLeg:[303f,0f,0f],RightLeg:[44f,0f,0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:917542}}},{id:"minecraft:black_concrete",Count:1b}]}
execute at @s unless block ^ ^ ^1 #minecraft:solid_blocks run tp @s ^ ^ ^1
execute at @s unless block ^ ^ ^1 #minecraft:solid_blocks run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Tags:["dashSkill"],Pose:{LeftArm:[36f,0f,0f],RightArm:[297f,0f,0f],LeftLeg:[303f,0f,0f],RightLeg:[44f,0f,0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:917542}}},{id:"minecraft:black_concrete",Count:1b}]}
execute at @s unless block ^ ^ ^1 #minecraft:solid_blocks run tp @s ^ ^ ^1
execute at @s unless block ^ ^ ^1 #minecraft:solid_blocks run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Tags:["dashSkill"],Pose:{LeftArm:[36f,0f,0f],RightArm:[297f,0f,0f],LeftLeg:[303f,0f,0f],RightLeg:[44f,0f,0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:917542}}},{id:"minecraft:black_concrete",Count:1b}]}
execute at @s unless block ^ ^ ^1 #minecraft:solid_blocks run tp @s ^ ^ ^1
execute at @s unless block ^ ^ ^1 #minecraft:solid_blocks run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Tags:["dashSkill"],Pose:{LeftArm:[36f,0f,0f],RightArm:[297f,0f,0f],LeftLeg:[303f,0f,0f],RightLeg:[44f,0f,0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:917542}}},{id:"minecraft:black_concrete",Count:1b}]}
execute as @e[tag=dashSkill] at @s rotated as @e[tag=superDash,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ ~
execute at @s run playsound minecraft:entity.firework_rocket.launch player @a[distance=..6.5] ~ ~ ~ 1.0 2.0 1.0
execute at @s run playsound minecraft:item.trident.riptide_3 player @a[distance=..6.5] ~ ~ ~ 1.0 2.0 1.0
execute at @s if block ~ ~ ~ #minecraft:solid_blocks run tp @s ^ ^ ^-1
execute at @s if block ~ ~ ~ #minecraft:solid_blocks run tp @s ^ ^ ^-1
execute at @s if block ~ ~ ~ #minecraft:solid_blocks run tp @s ^ ^ ^-1
scoreboard players set @s CD_SuperDash 30
scoreboard players reset @s rightClick
scoreboard players reset @s superDash
scoreboard players reset @s dashTime
