execute as @s[scores={spinTime=..100}] at @s run tp @s ~ ~ ~ ~30 ~
execute at @s run effect give @e[distance=..1.45,tag=!Spin] minecraft:wither 1 255 true
execute at @s run playsound entity.player.attack.strong player @a[distance=..8] ~ ~ ~ 0.1 1 0.1
execute as @s[scores={spinTime=101}] at @s run tp @s ~ ~ ~ facing entity @e[tag=!Spin,type=!#minecraft:non_mobs,tag=!ray,limit=1,sort=nearest] feet
execute as @s[scores={spinTime=190}] at @s run tp @s ~ ~ ~ facing entity @e[tag=Spin,limit=1,sort=nearest] feet

# Blades Sling
execute as @s[scores={spinTime=103..200}] at @s run tp @s ^ ^ ^1.50
kill @s[scores={spinTime=200..}]