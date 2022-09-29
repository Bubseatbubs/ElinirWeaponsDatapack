scoreboard players add @s flameTime 1
scoreboard players add @s flameInterval 1
execute as @s[scores={flameInterval=5..}] at @s anchored eyes run function elinirweapons:flamebreath/fireball
