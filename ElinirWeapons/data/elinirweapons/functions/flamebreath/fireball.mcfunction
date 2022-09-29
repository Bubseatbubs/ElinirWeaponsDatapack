execute at @s run summon fireball ^ ^ ^2 {Tags:["fireinit","fleigrofireball","ray"]}
execute at @s as @e[tag=fireinit,limit=1,sort=nearest] at @s rotated as @p run function elinirweapons:flamebreath/launch
scoreboard players set @s flameInterval 0
tag @s[scores={flameTime=40..}] remove flamebreath
scoreboard players set @s[scores={flameTime=40..}] flameTime 0