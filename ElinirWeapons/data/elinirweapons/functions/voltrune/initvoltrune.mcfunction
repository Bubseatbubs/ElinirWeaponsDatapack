execute at @s anchored eyes run summon armor_stand ^ ^ ^1 {Motion:[0.0,1.0,0.0],Silent:1b,Invulnerable:1b,Invisible:1b,Small:1b,NoGravity:0b,NoBasePlate:1b,Tags:["voltinit","thunderball","ray"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1866502663,-357676868,-1247017823,1972656282],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2E3Y2RhOTAwNGZjMTk3ZDY2YWZiYzJiMDAzYTViOWVmMTNjZjQ2MDBiMWZjNzQ5MDA2NzU5MGYwNDcxODFlIn19fQ=="}]}}}}]}
execute at @s as @e[tag=voltinit,limit=1,sort=nearest] at @s rotated as @p run function elinirweapons:voltrune/launch
scoreboard players set @s CD_Thunderball 275
execute at @s run playsound minecraft:block.enchantment_table.use player @a[distance=..2.5] ~ ~ ~ 1.0 0.6 1.0
execute at @s run playsound minecraft:entity.blaze.death player @a[distance=..2.5] ~ ~ ~ 1.0 2.0 1.0
scoreboard players reset @a[scores={rightClick=1..}] rightClick