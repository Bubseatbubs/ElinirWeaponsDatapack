scoreboard players operation .search SUID = @s SUID
tag @s add this
execute as @e[tag=swordshoot] if score @s SUID = .search SUID run function elinirweapons:soulblade/rotateblades
tag @s remove this