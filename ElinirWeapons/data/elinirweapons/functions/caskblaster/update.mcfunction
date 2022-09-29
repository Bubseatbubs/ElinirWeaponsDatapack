execute as @s at @s run particle smoke ~ ~0.5 ~ 0.05 0.05 0.05 0.05 20
execute as @s at @s run particle large_smoke ~ ~0.5 ~ 0.15 0.15 0.15 0.15 10 normal
execute as @s at @s if block ~ ~ ~ #minecraft:solid_blocks run function elinirweapons:caskblaster/activate
execute as @s[scores={ageRay=40..}] run function elinirweapons:caskblaster/activate


