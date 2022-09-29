# KS Turret Death
execute as @e[tag=rayshootpart] at @s run execute unless entity @e[tag=rayshoot,distance=..1.5] run kill @s
execute as @e[type=armor_stand,tag=rayshoot,scores={ageTurret=20..}] at @s run function elinirweapons:kalympiansentry/killsentry
scoreboard players add @e[type=armor_stand,tag=rayshoot] ageTurret 1

# Fleigro Flames Standstill
schedule function elinirweapons:tick_60t 1s