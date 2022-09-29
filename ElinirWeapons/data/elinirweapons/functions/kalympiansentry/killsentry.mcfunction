execute at @s as @e[tag=rayshootpart,distance=..1.5] run kill @s
execute at @s run particle minecraft:firework ~ ~ ~ 0.1 1 0.1 0.1 50 normal
execute at @s run playsound minecraft:block.anvil.break player @a[distance=..16] ~ ~ ~ 1.0 0.5 1.0
kill @s
