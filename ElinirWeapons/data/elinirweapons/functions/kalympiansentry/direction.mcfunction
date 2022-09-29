execute as @e[type=!#minecraft:non_mobs] at @s as @e[tag=airay,tag=!facingentity] if score @s SUID = @e[sort=nearest,limit=1] SUID run tag @e[sort=nearest,limit=1] add unaggro
execute at @s run tp @s ^ ^ ^-0.01 facing entity @e[tag=!unaggro,type=!#minecraft:non_mobs,tag=!ray,limit=1,sort=nearest] feet
tag @s add facingEntity
tag @s remove unaggro

