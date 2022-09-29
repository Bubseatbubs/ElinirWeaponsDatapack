execute at @s as @e[type=!#minecraft:non_mobs,distance=..1.25] unless score @s SUID = @e[tag=trailblazer,limit=1,sort=nearest] SUID run effect give @s wither 1 100 true
execute at @s run particle minecraft:flame ~ ~ ~ 0.2 0.9 0.2 0.01 3
execute at @s run particle minecraft:flame ~ ~ ~ 0.2 0.9 0.2 0.01 1 force
execute at @s run particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0.01 1
execute at @s run particle minecraft:cloud ~ ~2 ~ 0.1 0.1 0.1 0.05 1