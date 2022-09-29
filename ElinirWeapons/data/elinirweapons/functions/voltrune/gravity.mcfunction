execute at @s facing entity @e[tag=thunderball,sort=nearest,limit=1] feet run tp @s ^ ^ ^0.12 
execute at @s if block ~ ~ ~ #solid_blocks run tp @s ^ ^ ^-0.1
execute at @s run particle end_rod ~ ~ ~ 0.002 0.9 0.002 0.1 1 normal
