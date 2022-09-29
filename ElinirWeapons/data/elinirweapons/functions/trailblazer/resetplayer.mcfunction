tag @s remove isDashing
execute at @s as @e[tag=trailblazer] run execute if score @p SUID = @s SUID run kill @s
execute at @s run playsound block.fire.extinguish player @a[distance=..20] ~ ~ ~ 1 0.75 0.1
execute at @s run playsound block.bell.resonate player @a[distance=..20] ~ ~ ~ 1 0.75 0.1
scoreboard players set @s waitTime 0