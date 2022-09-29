tag @e[sort=nearest,limit=1,type=!#minecraft:non_mobs] add starTarget 
execute at @e[tag=starTarget,limit=1] as @a if score @s SUID = @e[sort=nearest,limit=1,tag=starshoot] SUID run effect give @s minecraft:instant_health 1 0 true
execute at @e[tag=starTarget,limit=1] as @a if score @s SUID = @e[sort=nearest,limit=1,tag=starshoot] SUID at @s run playsound block.bell.resonate master @s ~ ~ ~ 0.8 2 0.5
execute at @e[tag=starTarget,limit=1] as @a if score @s SUID = @e[sort=nearest,limit=1,tag=starshoot] SUID at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 2 0.5
execute at @e[tag=starTarget,limit=1] as @a if score @s SUID = @e[sort=nearest,limit=1,tag=starshoot] SUID at @s run particle heart ~ ~ ~ 0.3 0.3 0.3 0.1 10 normal
effect give @e[tag=starTarget,limit=1,sort=nearest] minecraft:instant_health 1 1 true
tag @e[tag=starTarget] remove starTarget
kill @e[tag=starshoot,limit=1,sort=nearest]