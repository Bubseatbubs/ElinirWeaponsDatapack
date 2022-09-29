tag @s add playerReturn
execute at @s positioned ~ ~10 ~ run summon armor_stand ^ ^ ^ {Tags:["return"],NoGravity:1b,Invisible:1b,Invulnerable:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"diamond_sword",Count:1b},{}],Pose:{RightArm:[180f,0f,180f]}} 
execute at @s positioned ~ ~10 ~ run summon armor_stand ^ ^ ^ {Tags:["return"],NoGravity:1b,Invisible:1b,Invulnerable:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"diamond_sword",Count:1b},{}],Pose:{RightArm:[180f,315f,180f]}}
execute at @s positioned ~ ~10 ~ run summon armor_stand ^ ^ ^ {Tags:["return"],NoGravity:1b,Invisible:1b,Invulnerable:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"diamond_sword",Count:1b},{}],Pose:{RightArm:[180f,270f,180f]}}
execute at @s positioned ~ ~10 ~ run summon armor_stand ^ ^ ^ {Tags:["return"],NoGravity:1b,Invisible:1b,Invulnerable:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"diamond_sword",Count:1b},{}],Pose:{RightArm:[180f,225f,180f]}}
execute at @s positioned ~ ~10 ~ run summon armor_stand ^ ^ ^ {Tags:["return"],NoGravity:1b,Invisible:1b,Invulnerable:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"diamond_sword",Count:1b},{}],Pose:{RightArm:[180f,180f,180f]}}
execute at @s positioned ~ ~10 ~ run summon armor_stand ^ ^ ^ {Tags:["return"],NoGravity:1b,Invisible:1b,Invulnerable:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"diamond_sword",Count:1b},{}],Pose:{RightArm:[180f,135f,180f]}}
execute at @s positioned ~ ~10 ~ run summon armor_stand ^ ^ ^ {Tags:["return"],NoGravity:1b,Invisible:1b,Invulnerable:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"diamond_sword",Count:1b},{}],Pose:{RightArm:[180f,90f,180f]}}
execute at @s positioned ~ ~10 ~ run summon armor_stand ^ ^ ^ {Tags:["return"],NoGravity:1b,Invisible:1b,Invulnerable:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"diamond_sword",Count:1b},{}],Pose:{RightArm:[180f,45f,180f]}}
execute at @s as @e[tag=return,distance=..12] at @s run tp @s ~ ~ ~ facing entity @e[tag=playerReturn,limit=1] feet
execute at @s positioned ~ ~10 ~ run particle minecraft:crit ~ ~ ~ 0.5 0.5 0.5 0.1 100 normal
execute at @s run playsound item.trident.return player @a[distance=..8] ~ ~ ~ 0.7 1.0 0.1
tag @s remove playerReturn
