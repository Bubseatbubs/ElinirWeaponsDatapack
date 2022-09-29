tag @s add isDashing
scoreboard players set @s CD_Dash 400
title @s times 5 95 5
title @s title "\uE005"

execute at @s run playsound minecraft:entity.firework_rocket.launch player @a[distance=..2.5] ~ ~ ~ 1 0.5 1
execute at @s run playsound minecraft:entity.creeper.death player @a[distance=..2.5] ~ ~ ~ 1 2 1
scoreboard players reset @a[scores={rightClick=1..}] rightClick