# Scoreboard
execute as @a unless score @s CD_TraceWand = @s CD_TraceWand run scoreboard players set @s CD_TraceWand 0
execute as @e[type=armor_stand,tag=rayshoot] unless score @s CD_TraceWand = @s CD_TraceWand run scoreboard players set @s CD_TraceWand 0
execute as @a unless score @s CD_ExplodingRay = @s CD_ExplodingRay run scoreboard players set @s CD_ExplodingRay 0
execute as @a unless score @s CD_RayShoot = @s CD_RayShoot run scoreboard players set @s CD_RayShoot 0
execute as @a unless score @s CD_BlindRay = @s CD_BlindRay run scoreboard players set @s CD_BlindRay 0
execute as @a unless score @s CD_Thunderball = @s CD_Thunderball run scoreboard players set @s CD_Thunderball 0
execute as @a unless score @s CD_Dash = @s CD_Dash run scoreboard players set @s CD_Dash 0
execute as @a unless score @s CD_Circle = @s CD_Circle run scoreboard players set @s CD_Circle 0
execute as @a unless score @s CD_FlameBreath = @s CD_FlameBreath run scoreboard players set @s CD_FlameBreath 0
execute as @a unless score @s CD_SwordSwing = @s CD_SwordSwing run scoreboard players set @s CD_SwordSwing 0
execute as @a unless score @s CD_SuperDash = @s CD_SuperDash run scoreboard players set @s CD_SuperDash 0
execute as @a unless score @s CD_BubsonDash = @s CD_BubsonDash run scoreboard players set @s CD_BubsonDash 0
execute as @a unless score @s CD_SwordShoot = @s CD_SwordShoot run scoreboard players set @s CD_SwordShoot 0
execute as @a unless score @s CD_StarShoot = @s CD_StarShoot run scoreboard players set @s CD_StarShoot 0
execute as @e[tag=thunderball] unless score @s waitTime = @s waitTime run scoreboard players set @s waitTime 0

# Apply Server User ID
execute as @a unless score @s SUID = @s SUID run function elinirweapons:givesuid

# RayKill / AgeRay
scoreboard players add @e[tag=ray] ageRay 1
kill @e[tag=ray,scores={ageRay=500..}]
kill @e[tag=ray,scores={ageRay=500..}]

# Check if player can right click w/ weapon
execute as @a[scores={rightClick=1..}] run function elinirweapons:cancast

# Trace Wand
execute as @a[scores={rightClick=1..,CD_TraceWand=0},predicate=elinirweapons:holding_tracewand] run function elinirweapons:tracewand/initwand
execute as @e[tag=tracewand] at @s run function elinirweapons:tracewand/update

# Trace Wand CD
scoreboard players remove @e[scores={CD_TraceWand=1..}] CD_TraceWand 1
title @a[scores={CD_TraceWand=1..},predicate=elinirweapons:holding_tracewand] actionbar [{"text":"Trace Wand","color":"gold"},{"text":" is on cooldown for ","color":"white"},{"score":{"name":"*","objective":"CD_TraceWand"},"color":"gold"},{"text":" ticks.","color":"white"}]
title @a[scores={CD_TraceWand=0},predicate=elinirweapons:holding_tracewand] actionbar [{"text":"Trace Wand","color":"gold"},{"text":" is ready to use.","color":"white"}]

# Kalympian Caskblaster
execute as @a[scores={rightClick=1..,CD_ExplodingRay=0},predicate=elinirweapons:holding_caskblaster] run function elinirweapons:caskblaster/initcaskblaster
execute as @e[tag=explodingray] at @s run function elinirweapons:caskblaster/update

# Kalympian Caskblaster CD
scoreboard players remove @a[scores={CD_ExplodingRay=1..}] CD_ExplodingRay 1
title @a[scores={CD_ExplodingRay=1..},predicate=elinirweapons:holding_caskblaster] actionbar [{"text":"Kalympian Caskblaster","color":"gold"},{"text":" is on cooldown for ","color":"white"},{"score":{"name":"*","objective":"CD_ExplodingRay"},"color":"gold"},{"text":" ticks.","color":"white"}]
title @a[scores={CD_ExplodingRay=0},predicate=elinirweapons:holding_caskblaster] actionbar [{"text":"Kalympian Caskblaster","color":"gold"},{"text":" is ready to use.","color":"white"}]

# Kalympian Sentryforger
execute as @a[scores={rightClick=1..,CD_RayShoot=0},predicate=elinirweapons:holding_sentryforger] at @s if block ~ ~-1 ~ #minecraft:solid_blocks run function elinirweapons:kalympiansentry/initsentry
execute as @a[scores={rightClick=1..,CD_RayShoot=0},predicate=elinirweapons:holding_sentryforger] run function elinirweapons:kalympiansentry/failinit

# Turret AI
execute as @e[type=armor_stand,tag=rayshoot] at @s run function elinirweapons:kalympiansentry/updateturret

# AIRay
execute as @e[tag=airay] at @s run function elinirweapons:kalympiansentry/updateray

# Kalympian Sentryforger CD
scoreboard players remove @e[scores={CD_RayShoot=1..}] CD_RayShoot 1
title @a[scores={CD_RayShoot=1..},predicate=elinirweapons:holding_sentryforger] actionbar [{"text":"Kalympian Sentryforger","color":"gold"},{"text":" is on cooldown for ","color":"white"},{"score":{"name":"*","objective":"CD_RayShoot"},"color":"gold"},{"text":" ticks.","color":"white"}]
title @a[scores={CD_RayShoot=0},predicate=elinirweapons:holding_sentryforger] actionbar [{"text":"Kalympian Sentryforger","color":"gold"},{"text":" is ready to use.","color":"white"}]

# Sightstealer Hex
execute as @a[scores={rightClick=1..,CD_BlindRay=0},predicate=elinirweapons:holding_sightstealer] run function elinirweapons:sightstealer/initsightstealer
execute as @e[tag=blindray] run function elinirweapons:sightstealer/update

# Sightstealer Hex CD
scoreboard players remove @e[scores={CD_BlindRay=1..}] CD_BlindRay 1
title @a[scores={CD_BlindRay=1..},predicate=elinirweapons:holding_sightstealer] actionbar [{"text":"Sightstealer Hex","color":"gold"},{"text":" is on cooldown for ","color":"white"},{"score":{"name":"*","objective":"CD_BlindRay"},"color":"gold"},{"text":" ticks.","color":"white"}]
title @a[scores={CD_BlindRay=0},predicate=elinirweapons:holding_sightstealer] actionbar [{"text":"Sightstealer Hex","color":"gold"},{"text":" is ready to use.","color":"white"}]

# Thunderball
execute as @a[scores={rightClick=1..,CD_Thunderball=0},predicate=elinirweapons:holding_voltrune] run function elinirweapons:voltrune/initvoltrune
execute as @e[tag=thunderball] at @s run function elinirweapons:voltrune/update

# Thunderball Interval
scoreboard players set @e[tag=thunderball,scores={waitTime=16..}] waitTime 0
scoreboard players add @e[tag=thunderball,tag=active] waitTime 1

# Thunderball CD
scoreboard players remove @e[scores={CD_Thunderball=1..}] CD_Thunderball 1
title @a[scores={CD_Thunderball=1..},predicate=elinirweapons:holding_voltrune] actionbar [{"text":"Voltrune","color":"gold"},{"text":" is on cooldown for ","color":"white"},{"score":{"name":"*","objective":"CD_Thunderball"},"color":"gold"},{"text":" ticks.","color":"white"}]
title @a[scores={CD_Thunderball=0},predicate=elinirweapons:holding_voltrune] actionbar [{"text":"Voltrune","color":"gold"},{"text":" is ready to use.","color":"white"}]

# Trailblazer
execute as @a[scores={rightClick=1..,CD_Dash=0},predicate=elinirweapons:holding_trailblazer] run function elinirweapons:trailblazer/inittrailblazer

execute as @e[tag=isDashing] run function elinirweapons:trailblazer/updateplayer
execute as @e[tag=trailblazer,type=area_effect_cloud] run function elinirweapons:trailblazer/update

scoreboard players remove @e[scores={CD_Dash=1..}] CD_Dash 1
title @a[scores={CD_Dash=1..},predicate=elinirweapons:holding_trailblazer] actionbar [{"text":"Trailblazer","color":"gold"},{"text":" is on cooldown for ","color":"white"},{"score":{"name":"*","objective":"CD_Dash"},"color":"gold"},{"text":" ticks.","color":"white"}]
title @a[scores={CD_Dash=0},predicate=elinirweapons:holding_trailblazer] actionbar [{"text":"Trailblazer","color":"gold"},{"text":" is ready to use.","color":"white"}]

# Circle Wand
execute as @a[scores={rightClick=1..,CD_Circle=0},predicate=elinirweapons:holding_flaringsoul] run function elinirweapons:flaringsoul/initcircle
execute as @e[tag=circlewand] run function elinirweapons:flaringsoul/update

# Circle Wand CD
scoreboard players remove @e[scores={CD_Circle=1..}] CD_Circle 1
title @a[scores={CD_Circle=1..},predicate=elinirweapons:holding_flaringsoul] actionbar [{"text":"Flaring Soul","color":"gold"},{"text":" is on cooldown for ","color":"white"},{"score":{"name":"*","objective":"CD_Circle"},"color":"gold"},{"text":" ticks.","color":"white"}]
title @a[scores={CD_Circle=0},predicate=elinirweapons:holding_flaringsoul] actionbar [{"text":"Flaring Soul","color":"gold"},{"text":" is ready to use.","color":"white"}]

# Flame Breath
execute as @a[scores={rightClick=1..,CD_FlameBreath=0},predicate=elinirweapons:holding_flamebreath] run function elinirweapons:flamebreath/initflamebreath
execute as @e[tag=flamebreath] run function elinirweapons:flamebreath/update

# Flame Breath CD
scoreboard players remove @e[scores={CD_FlameBreath=1..}] CD_FlameBreath 1
title @a[scores={CD_FlameBreath=1..},predicate=elinirweapons:holding_flamebreath] actionbar [{"text":"Fleigro Flames","color":"gold"},{"text":" is on cooldown for ","color":"white"},{"score":{"name":"*","objective":"CD_FlameBreath"},"color":"gold"},{"text":" ticks.","color":"white"}]
title @a[scores={CD_FlameBreath=0},predicate=elinirweapons:holding_flamebreath] actionbar [{"text":"Fleigro Flames","color":"gold"},{"text":" is ready to use.","color":"white"}]

# Sword Swing
execute as @a[scores={rightClick=1..,CD_SwordSwing=0},predicate=elinirweapons:holding_arringian] run function elinirweapons:arringian/initarringian
execute at @a[tag=Spin,limit=1,sort=nearest] anchored eyes run teleport @e[scores={spinTime=..100},tag=Spin,type=!player,distance=..8,limit=8,sort=nearest] ~ ~ ~
execute as @e[tag=Spin,type=!player] run function elinirweapons:arringian/update
scoreboard players add @e[tag=Spin] spinTime 1

# Swords Return
execute as @e[tag=return] at @s run tp @s ^ ^ ^0.45
execute as @e[tag=return] at @s run execute if entity @a[distance=..0.25] run kill @s

# Player
execute as @a[scores={spinTime=104..}] at @s run function elinirweapons:arringian/finisharringian

# Sword Swing CD
scoreboard players remove @e[scores={CD_SwordSwing=1..}] CD_SwordSwing 1
title @a[scores={CD_SwordSwing=1..},predicate=elinirweapons:holding_arringian] actionbar [{"text":"Arringian","color":"gold"},{"text":" is on cooldown for ","color":"white"},{"score":{"name":"*","objective":"CD_SwordSwing"},"color":"gold"},{"text":" ticks.","color":"white"}]
title @a[scores={CD_SwordSwing=0},predicate=elinirweapons:holding_arringian] actionbar [{"text":"Arringian","color":"gold"},{"text":" is ready to use.","color":"white"}]

# Dash
execute as @a[scores={rightClick=1..,CD_SuperDash=0},predicate=elinirweapons:holding_dash] run function elinirweapons:dash

scoreboard players add @e[type=armor_stand,tag=dashSkill] dashTime 1
kill @e[type=armor_stand,tag=dashSkill,scores={dashTime=2..}]

scoreboard players add @e[tag=madDasher] dashTime 1

execute as @e[tag=madDasher,scores={dashTime=35..}] at @s run function elinirweapons:dash
scoreboard players reset @e[tag=madDasher,scores={dashTime=35..}] dashTime

# Dash CD
scoreboard players remove @e[scores={CD_SuperDash=1..}] CD_SuperDash 1
title @a[scores={CD_SuperDash=1..},predicate=elinirweapons:holding_dash] actionbar [{"text":"Tenebrous Dash","color":"gold"},{"text":" is on cooldown for ","color":"white"},{"score":{"name":"*","objective":"CD_SuperDash"},"color":"gold"},{"text":" ticks.","color":"white"}]
title @a[scores={CD_SuperDash=0},predicate=elinirweapons:holding_dash] actionbar [{"text":"Tenebrous Dash","color":"gold"},{"text":" is ready to use.","color":"white"}]

# Sword Shoot
execute as @a[scores={rightClick=1..,CD_SwordShoot=0},predicate=elinirweapons:holding_swordshoot] run function elinirweapons:soulblade/initswordshoot
execute as @e[tag=swordshoot] at @s run function elinirweapons:soulblade/update

# Rotation
execute as @a run function elinirweapons:soulblade/checkifrotate

# Sword Shoot CD
scoreboard players remove @e[scores={CD_SwordShoot=1..}] CD_SwordShoot 1
title @a[scores={CD_SwordShoot=1..},predicate=elinirweapons:holding_swordshoot] actionbar [{"text":"Summon Soulblade","color":"gold"},{"text":" is on cooldown for ","color":"white"},{"score":{"name":"*","objective":"CD_SwordShoot"},"color":"gold"},{"text":" ticks.","color":"white"}]
title @a[scores={CD_SwordShoot=0},predicate=elinirweapons:holding_swordshoot] actionbar [{"text":"Summon Soulblade","color":"gold"},{"text":" is ready to use.","color":"white"}]

# Starshoot
execute as @a[scores={rightClick=1..,CD_StarShoot=0},predicate=elinirweapons:holding_starblast] run function elinirweapons:starshoot/initstarshoot
execute as @e[tag=starshoot] at @s run function elinirweapons:starshoot/update

# Starshoot CD
scoreboard players remove @e[scores={CD_StarShoot=1..}] CD_StarShoot 1
title @a[scores={CD_StarShoot=1..},predicate=elinirweapons:holding_starblast] actionbar [{"text":"Star Blast","color":"gold"},{"text":" is on cooldown for ","color":"white"},{"score":{"name":"*","objective":"CD_StarShoot"},"color":"gold"},{"text":" ticks.","color":"white"}]
title @a[scores={CD_StarShoot=0},predicate=elinirweapons:holding_starblast] actionbar [{"text":"Star Blast","color":"gold"},{"text":" is ready to use.","color":"white"}]

# Bubson Dash
execute as @a[scores={rightClick=1..,CD_BubsonDash=0},predicate=elinirweapons:holding_bubsondash] run function elinirweapons:bubsondash

# Bubson Dash CD
scoreboard players remove @e[scores={CD_BubsonDash=1..}] CD_BubsonDash 1
title @a[scores={CD_BubsonDash=1..},predicate=elinirweapons:holding_bubsondash] actionbar [{"text":"Make Waves","color":"gold"},{"text":" is on cooldown for ","color":"white"},{"score":{"name":"*","objective":"CD_BubsonDash"},"color":"gold"},{"text":" ticks.","color":"white"}]
title @a[scores={CD_BubsonDash=0},predicate=elinirweapons:holding_bubsondash] actionbar [{"text":"Make Waves","color":"gold"},{"text":" is ready to use.","color":"white"}]

