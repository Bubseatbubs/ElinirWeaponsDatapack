execute as @s at @s run tp @s ^ ^ ^-0.15
execute at @s as @e[type=!#minecraft:non_mobs,distance=..3,sort=nearest] unless score @s SUID = @e[tag=blindray,limit=1,sort=nearest] SUID run execute as @e[tag=blindray,limit=1,sort=nearest] facing entity @e[limit=1,sort=nearest,type=!#minecraft:non_mobs,distance=..9] feet run tp @s ^ ^0.03 ^0.25
execute at @s positioned ~ ~-0.3 ~ run execute as @e[type=player,distance=..1.5] unless score @s SUID = @e[tag=blindray,limit=1,sort=nearest] SUID run scoreboard players set @s hp_dmg 6
execute at @s positioned ~ ~-0.3 ~ run execute as @e[type=!#minecraft:undead_mobs,type=!#minecraft:non_mobs,distance=..1.5] unless score @s SUID = @e[tag=blindray,limit=1,sort=nearest] SUID run effect give @s minecraft:blindness 1 0 true
execute at @s positioned ~ ~-0.3 ~ run execute as @e[type=!#minecraft:undead_mobs,type=!#minecraft:non_mobs,distance=..1.5] unless score @s SUID = @e[tag=blindray,limit=1,sort=nearest] SUID run effect give @s minecraft:instant_damage 1 1 true
execute at @s run particle minecraft:enchant ~ ~0.5 ~ 0.5 0.5 0.5 0.03 10
execute at @s run particle minecraft:enchant ~ ~0.5 ~ 0.2 0.2 0.2 0.03 100
execute at @s positioned ~ ~-0.3 ~ as @e[type=#minecraft:undead_mobs,type=!#minecraft:non_mobs,distance=..1.5] run effect give @s minecraft:blindness 3 1 true
execute at @s positioned ~ ~-0.3 ~ as @e[type=#minecraft:undead_mobs,type=!player,type=!#minecraft:non_mobs,distance=..1.5] run effect give @s minecraft:instant_health 1 1 true
execute at @s if block ~ ~ ~ #minecraft:solid_blocks run kill @s
execute at @s if entity @e[distance=..1.5,type=!minecraft:player,type=!#minecraft:non_mobs,tag=!ray] run kill @s