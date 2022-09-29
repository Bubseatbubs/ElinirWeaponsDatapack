tellraw @a [{"text":"Loaded: "},{"text":"Elinir's Weapons","color":"gold","italic":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Adds a variety of weapons\nto Elinir."}]}}]

# Scoreboard
scoreboard objectives add CD_TraceWand dummy
scoreboard objectives add CD_ExplodingRay dummy
scoreboard objectives add CD_RayShoot dummy
scoreboard objectives add CD_BlindRay dummy
scoreboard objectives add CD_Thunderball dummy
scoreboard objectives add CD_StarShoot dummy
scoreboard objectives add CD_Dash dummy
scoreboard objectives add CD_FlameBreath dummy
scoreboard objectives add CD_Circle dummy
scoreboard objectives add CD_SwordSwing dummy
scoreboard objectives add CD_SuperDash dummy
scoreboard objectives add CD_BubsonDash dummy
scoreboard objectives add CD_SwordShoot dummy
scoreboard objectives add TicksBlock dummy
scoreboard objectives add DashRotation dummy
scoreboard objectives add SUID dummy
scoreboard objectives add ageRay dummy
scoreboard objectives add test dummy
scoreboard objectives add ageTurret dummy
scoreboard objectives add flameTime dummy
scoreboard objectives add flameInterval dummy
scoreboard objectives add waitTime dummy
scoreboard objectives add dashTime dummy
scoreboard objectives add spinTime dummy
scoreboard objectives add weaponOnCD dummy
scoreboard objectives add rightClick minecraft.used:minecraft.carrot_on_a_stick

function elinirweapons:tick_60t
